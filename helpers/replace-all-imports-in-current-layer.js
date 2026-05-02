const path = require('path')
const constants = require('./constants')
const findFile = require('./find-file')
const updateImportObjectLocationInTarget = require('./update-import-object-location-in-target')
const changeRelativePathToAbsolute = require('./change-relative-path-to-absolute')
const cleanPath = require('./clean-path')
const log = require('./logger')

async function replaceAllImportsInCurrentLayer(importObjs, updatedFileContent, dir, ctx) {
	// Phase 1 — resolve filePath + (if present) flattened content for each import in parallel.
	const resolved = await Promise.all(importObjs.map(async (importObj) => {
		const dependencyPath = cleanPath(importObj.dependencyPath)
		const isAbsolutePath = !dependencyPath.startsWith(constants.DOT)
		const filePath = cleanPath(isAbsolutePath ? dependencyPath : (dir + dependencyPath))
		const exists = await ctx.exists(filePath)
		const fileContent = exists ? await changeRelativePathToAbsolute(filePath, ctx) : null
		return { importObj, dependencyPath, filePath, fileBaseName: path.basename(filePath), exists, fileContent }
	}))

	// Phase 2 — apply replacements sequentially (mutates `content` and `importedSrcFiles`).
	const { importedSrcFiles } = ctx
	let content = updatedFileContent

	for (const r of resolved) {
		let { importObj } = r
		const { dependencyPath, filePath, fileBaseName, exists, fileContent } = r

		if (importObj.contractName) {
			content = content.replace(importObj.alias + constants.DOT, importObj.contractName + constants.DOT)
		}

		importObj = updateImportObjectLocationInTarget(importObj, content)
		const importStatement = content.substring(importObj.startIndex, importObj.endIndex)

		if (exists) {
			log.info(`${filePath} SOURCE FILE WAS FOUND`)
			if (!importedSrcFiles.has(fileBaseName)) {
				importedSrcFiles.set(fileBaseName, fileContent)
				if (fileContent.includes(constants.IS)) {
					content = content.replace(importStatement, fileContent)
				} else {
					content = fileContent + content.replace(importStatement, constants.EMPTY)
				}
			} else {
				content = content.replace(importStatement, constants.EMPTY)
				const prev = importedSrcFiles.get(fileBaseName)
				if (content.includes(prev) && content.includes(constants.IMPORT)) {
					content = fileContent + content.replace(prev, constants.EMPTY)
				}
			}
		} else if (!importedSrcFiles.has(fileBaseName)) {
			log.warn(`!!! ${filePath} SOURCE FILE WAS NOT FOUND. I'M TRYING TO FIND IT RECURSIVELY !!!`)
			const directorySeparator = process.platform === 'win32' ? '\\' : constants.SLASH
			const dirNew = dir.substring(0, dir.lastIndexOf(directorySeparator))
			content = await findFile.byNameAndReplace(dirNew, dependencyPath, content, importStatement, ctx)
			log.info(`${filePath} SOURCE FILE WAS FOUND`)
		} else {
			content = content.replace(importStatement, constants.EMPTY)
		}
	}

	return content
}

module.exports = replaceAllImportsInCurrentLayer
