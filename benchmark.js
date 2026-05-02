#! /usr/bin/env node
'use strict'

const { Bench } = require('tinybench')
const fs = require('fs')
const path = require('path')
const { createContext } = require('./helpers/context')
const replaceAllImportsRecursively = require('./helpers/replace-all-imports-recursively')
const {
	deduplicateSolidityVersoins,
	deduplicateSolidityExpHeaders,
	deduplicateLicenses,
} = require('./helpers/deduplicate-lines')

const INPUT = path.resolve(__dirname, 'demo/src/Oracles.sol')
const DIR   = path.resolve(__dirname, 'demo/src') + '/'
const OUT   = path.resolve(__dirname, 'out')

async function runFlatten() {
	const ctx = createContext()
	const inputFileContent = fs.readFileSync(INPUT, 'utf8')
	ctx.srcFiles = await ctx.glob(DIR + '**/*.sol')
	let out = await replaceAllImportsRecursively(inputFileContent, DIR, ctx)
	out = deduplicateLicenses(out)
	out = deduplicateSolidityVersoins(out)
	out = deduplicateSolidityExpHeaders(out)
	return out
}

async function main() {
	if (!fs.existsSync(OUT)) fs.mkdirSync(OUT)
	process.env.LOG_LEVEL = 'silent'

	const result = await runFlatten()
	if (!result.includes('contract Oracles')) { console.error('FAIL'); process.exit(1) }
	console.log('Correctness check: PASS\n')

	const bench = new Bench({ iterations: 50, warmupIterations: 5 })
	bench.add('flatten (ctx-threaded)', async () => { await runFlatten() })
	await bench.run()

	console.log('Results (50 iterations):')
	console.table(bench.tasks.map(t => {
		const l = t.result.latency
		return {
			name: t.name,
			'mean ms': l.mean.toFixed(2),
			'min ms':  l.min.toFixed(2),
			'max ms':  l.max.toFixed(2),
			'p99 ms':  l.p99.toFixed(2),
			'ops/sec': (1000 / l.mean).toFixed(1),
		}
	}))
}

main().catch(e => { console.error(e); process.exit(1) })
