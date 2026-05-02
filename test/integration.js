const assert = require('assert')
const fs = require('fs')
const path = require('path')
const { createContext } = require('../helpers/context')
const replaceAllImportsRecursively = require('../helpers/replace-all-imports-recursively')
const {
	deduplicateSolidityVersoins,
	deduplicateSolidityExpHeaders,
	deduplicateLicenses,
} = require('../helpers/deduplicate-lines')

async function flattenInMemory(inputFilePath) {
	const ctx = createContext()
	const dir = path.dirname(path.resolve(inputFilePath)) + '/'
	const inputFileContent = fs.readFileSync(inputFilePath, 'utf8')
	ctx.srcFiles = await ctx.glob(dir + '**/*.sol')
	let out = await replaceAllImportsRecursively(inputFileContent, dir, ctx)
	out = deduplicateLicenses(out)
	out = deduplicateSolidityVersoins(out)
	out = deduplicateSolidityExpHeaders(out)
	return out
}

describe('integration: demo Oracles.sol', () => {
	let output

	before(async () => {
		process.env.LOG_LEVEL = 'silent'
		output = await flattenInMemory(path.resolve(__dirname, '..', 'demo/src/Oracles.sol'))
	})

	it('produces non-empty output', () => {
		assert.ok(output.length > 0)
	})

	it('inlines all transitive contracts', () => {
		for (const name of ['Oracles', 'BallotsManager', 'KeysManager', 'ValidatorsManager', 'owned']) {
			assert.ok(output.includes(`contract ${name}`), `missing contract ${name}`)
		}
	})

	it('inlines lib dependencies (KeyClass, ValidatorClass, BallotClass)', () => {
		for (const name of ['KeyClass', 'ValidatorClass', 'BallotClass']) {
			assert.ok(output.includes(`contract ${name}`), `missing contract ${name}`)
		}
	})

	it('contains no remaining import statements', () => {
		const remaining = output.match(/^\s*import\s+['"]/gm)
		assert.strictEqual(remaining, null, `found unresolved imports: ${remaining}`)
	})

	it('keeps exactly one active pragma solidity directive', () => {
		// dedup blanks subsequent pragmas; we want exactly one non-empty one
		const lines = output.split(/\r?\n/).filter(l => /^\s*pragma\s+solidity/.test(l))
		assert.strictEqual(lines.length, 1, `expected 1 pragma, got ${lines.length}`)
	})

	it('is deterministic (running twice produces identical output)', async () => {
		const second = await flattenInMemory(path.resolve(__dirname, '..', 'demo/src/Oracles.sol'))
		assert.strictEqual(output, second)
	})
})

describe('integration: synthetic large workload', () => {
	const largeSrcDir = path.resolve(__dirname, '..', 'demo-large/src')
	const entryFile = path.join(largeSrcDir, 'Entry.sol')

	before(function () {
		if (!fs.existsSync(entryFile)) this.skip()
		process.env.LOG_LEVEL = 'silent'
	})

	it('inlines every Leaf into Entry', async () => {
		const output = await flattenInMemory(entryFile)
		const leafCount = fs.readdirSync(largeSrcDir).filter(f => /^Leaf\d+\.sol$/.test(f)).length
		assert.ok(leafCount > 0, 'no Leaf*.sol fixtures present')
		for (let i = 0; i < leafCount; i++) {
			assert.ok(output.includes(`contract Leaf${i}`), `missing Leaf${i}`)
		}
		assert.ok(output.includes('contract Entry'), 'missing Entry')
	})
})
