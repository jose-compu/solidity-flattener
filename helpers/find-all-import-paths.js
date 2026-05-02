const path = require('path')
const decomment = require('decomment')
const findFile = require('./find-file')
const constants = require('./constants')

/*
 * Finds all import paths
 */
async function findAllImportPaths(dir, content, ctx) {
	content = decomment(content, { safe: true })
	const rawImports = []
	const regex = new RegExp(constants.IMPORT, 'gi')
	let result
	while ((result = regex.exec(content))) {
		const startImport = result.index
		const endImport = startImport + content.substr(startImport).indexOf(constants.SEMICOLON) + 1
		const fullImportStatement = content.substring(startImport, endImport)
		const fullImportParts = fullImportStatement.split('"')
		const fullImportPartsAlt = fullImportStatement.split('\'')
		const dependencyPath = fullImportParts.length > 1 ? fullImportParts[1] : fullImportPartsAlt[1]
		const fullImportPartsByAs = fullImportStatement.split(constants.AS)
		const alias = fullImportPartsByAs.length > 1 ? fullImportPartsByAs[1].split(constants.SEMICOLON)[0] : null

		rawImports.push({
			startIndex: startImport,
			endIndex: endImport,
			dependencyPath,
			fullImportStatement,
			alias,
		})
	}

	// Resolve aliases (which need file reads) in parallel
	return Promise.all(rawImports.map(async (importObj) => {
		if (!importObj.alias) return importObj
		const exists = await ctx.exists(importObj.dependencyPath)
		let fileContent
		if (exists) {
			fileContent = await ctx.readFile(importObj.dependencyPath)
		} else {
			const dirNew = dir.substring(0, dir.lastIndexOf(constants.SLASH))
			fileContent = await findFile.byName(dirNew, path.basename(importObj.dependencyPath), ctx)
		}
		if (fileContent && fileContent.includes(constants.CONTRACT)) {
			importObj.contractName = getContractName(fileContent)
		}
		return importObj
	}))
}

function getContractName(fileContent) {
	return fileContent
		.substring(fileContent.indexOf(constants.CONTRACT) + constants.CONTRACT.length, fileContent.indexOf('{'))
		.replace(/\s/g, constants.EMPTY)
}

module.exports = findAllImportPaths
