const path = require('path')
const constants = require('./constants')
const cleanPath = require('./clean-path')

/*
 * Replaces relative paths to absolute path for imports
 */
async function changeRelativePathToAbsolute(filePath, ctx) {
	const dir = path.dirname(filePath)
	const fileContent = await ctx.readFile(filePath)
	let fileContentNew = fileContent

	const findAllImportPaths = require('./find-all-import-paths')
	const importObjs = await findAllImportPaths(dir, fileContent, ctx)
	if (!importObjs || importObjs.length === 0) return fileContentNew

	for (const { dependencyPath, fullImportStatement } of importObjs) {
		const isAbsolutePath = !dependencyPath.startsWith(constants.DOT)
		if (isAbsolutePath) continue
		const dependencyPathNew = cleanPath(dir + constants.SLASH + dependencyPath)
		const fullImportStatementNew = fullImportStatement.split(dependencyPath).join(dependencyPathNew)
		fileContentNew = fileContentNew.split(fullImportStatement).join(fullImportStatementNew)
	}

	return fileContentNew
}

module.exports = changeRelativePathToAbsolute
