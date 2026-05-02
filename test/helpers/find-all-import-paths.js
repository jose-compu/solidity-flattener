const assert = require('assert')
const findAllImportPaths = require('../../helpers/find-all-import-paths')
const { createContext } = require('../../helpers/context')

const SAMPLE = `
pragma solidity ^0.8.0;

import "./A.sol";
import './B.sol';
import "./sub/C.sol";

contract X is A, B, C {}
`

describe('findAllImportPaths', () => {
	it('extracts all import paths regardless of quote style', async () => {
		const ctx = createContext()
		const out = await findAllImportPaths('./test/contracts', SAMPLE, ctx)
		const paths = out.map(o => o.dependencyPath)
		assert.deepStrictEqual(paths, ['./A.sol', './B.sol', './sub/C.sol'])
	})

	it('returns empty array when there are no imports', async () => {
		const ctx = createContext()
		const out = await findAllImportPaths('./test/contracts', 'contract X {}', ctx)
		assert.deepStrictEqual(out, [])
	})

	it('strips comments before scanning (commented imports are ignored)', async () => {
		const ctx = createContext()
		const content = `
			// import "./Ignored.sol";
			/* import "./AlsoIgnored.sol"; */
			import "./Real.sol";
			contract X {}
		`
		const out = await findAllImportPaths('./test/contracts', content, ctx)
		assert.strictEqual(out.length, 1)
		assert.strictEqual(out[0].dependencyPath, './Real.sol')
	})

	it('captures startIndex/endIndex for each import statement', async () => {
		const ctx = createContext()
		const out = await findAllImportPaths('./test/contracts', SAMPLE, ctx)
		for (const imp of out) {
			assert.ok(imp.endIndex > imp.startIndex)
			assert.ok(imp.fullImportStatement.startsWith('import'))
			assert.ok(imp.fullImportStatement.endsWith(';'))
		}
	})
})
