#! /usr/bin/env node
const fsp = require('fs/promises')
const fs = require('fs')
const variables = require('./helpers/variables')
const log = require('./helpers/logger')
const constants = require('./helpers/constants')
const cleanPath = require('./helpers/clean-path')
const { createContext } = require('./helpers/context')
const replaceAllImportsRecursively = require('./helpers/replace-all-imports-recursively')
const {
	deduplicateSolidityVersoins,
	deduplicateSolidityExpHeaders,
	deduplicateLicenses,
} = require('./helpers/deduplicate-lines')

// Run as CLI when invoked directly
if (require.main === module) {
	flatten().catch(e => { log.error(e); process.exit(1) })
}

async function flatten() {
	const ctx = createContext()
	const inputFileContent = await fsp.readFile(variables.inputFilePath, 'utf8')

	let dir = variables.parentDir + constants.SLASH
	const isAbsolutePath = !dir.startsWith(constants.DOT)
	if (!isAbsolutePath) dir = __dirname + constants.SLASH + dir
	dir = cleanPath(dir)

	ctx.srcFiles = await ctx.glob(variables.parentDir + constants.SOL)

	let outputFileContent = await replaceAllImportsRecursively(inputFileContent, dir, ctx)
	outputFileContent = deduplicateLicenses(outputFileContent)
	outputFileContent = deduplicateSolidityVersoins(outputFileContent)
	outputFileContent = deduplicateSolidityExpHeaders(outputFileContent)

	if (!fs.existsSync(variables.outDir)) await fsp.mkdir(variables.outDir, { recursive: true })
	const fileName = `${variables.flatContractPrefix}_flat.sol`
	const filePath = `${variables.outDir}/${fileName}`
	await fsp.writeFile(filePath, outputFileContent)
	log.info(`Success! Flat file ${fileName} is generated to  ${variables.outDir} directory`)
}

module.exports = { flatten, createContext }
