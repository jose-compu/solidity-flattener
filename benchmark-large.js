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

const INPUT = path.resolve(__dirname, 'demo-large/src/Entry.sol')
const DIR   = path.resolve(__dirname, 'demo-large/src') + '/'

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
	process.env.LOG_LEVEL = 'silent'
	const result = await runFlatten()
	if (!result.includes('contract Entry')) { console.error('FAIL'); process.exit(1) }
	console.log('Correctness check (large): PASS\n')

	const bench = new Bench({ iterations: 30, warmupIterations: 3 })
	bench.add('flatten-large (ctx-threaded)', async () => { await runFlatten() })
	await bench.run()

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
