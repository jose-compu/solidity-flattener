const path = require('path')
const constants = require('./constants')
const changeRelativePathToAbsolute = require('./change-relative-path-to-absolute')

/*
 * Walk dirs upward looking for a `.sol` file whose basename matches `fileName`.
 */
async function byName(dir, fileName, ctx) {
	while (dir && dir.includes(constants.SLASH)) {
		const srcFiles = await ctx.glob(dir + constants.SOL)
		const match = srcFiles.find(p => path.basename(p) === fileName)
		if (match) return ctx.readFile(match)
		dir = dir.substring(0, dir.lastIndexOf(constants.SLASH))
	}
	return undefined
}

/*
 * Walk dirs upward, scanning glob hits for one matching `dependencyPath`.
 */
async function byNameAndReplace(dir, dependencyPath, updatedFileContent, importStatement, ctx) {
	let content = updatedFileContent
	while (true) {
		const srcFiles = await ctx.glob(dir + constants.SOL)
		const { content: nextContent, importIsReplacedBefore } =
			await scanForReplacement(importStatement, content, dir, dependencyPath, srcFiles, ctx)
		content = nextContent
		if (importIsReplacedBefore) {
			return content.replace(importStatement, constants.EMPTY)
		}
		if (!dir.includes(constants.SLASH)) {
			return content.replace(importStatement, constants.EMPTY)
		}
		dir = dir.substring(0, dir.lastIndexOf(constants.SLASH))
	}
}

async function scanForReplacement(importStatement, updatedFileContent, dir, dependencyPath, srcFiles, ctx) {
	const { importedSrcFiles } = ctx
	const isAbsolutePath = !dependencyPath.startsWith(constants.DOT)
	let content = updatedFileContent
	let importIsReplacedBefore = false

	for (const filePath of srcFiles) {
		if (!(isAbsolutePath && filePath.includes(dependencyPath))) continue
		const fileBaseName = path.basename(filePath)
		const depExists = await ctx.exists(dependencyPath)

		if (!importedSrcFiles.has(fileBaseName) || depExists) {
			const importFileContent = await changeRelativePathToAbsolute(depExists ? dependencyPath : filePath, ctx)
			if (importFileContent.includes(constants.IS)) {
				content = content.replace(importStatement, importFileContent)
			} else {
				content = importFileContent + content.replace(importStatement, constants.EMPTY)
			}
			importedSrcFiles.set(fileBaseName, importFileContent)
			return { content, importIsReplacedBefore: true }
		}

		// already-imported branch — issue #2
		content = content.replace(importStatement, constants.EMPTY)
		const fileName = importedSrcFiles.get(path.basename(dir + dependencyPath))
		if (content.includes(fileName) && content.includes(constants.IMPORT)) {
			const importFileContent = await ctx.readFile(filePath)
			content = importFileContent + content.replace(fileName, constants.EMPTY)
		}
		importIsReplacedBefore = true
	}

	return { content, importIsReplacedBefore }
}

module.exports = {
	byName,
	byNameAndReplace,
}
