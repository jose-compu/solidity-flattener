const findAllImportPaths = require('./find-all-import-paths')
const replaceAllImportsInCurrentLayer = require('./replace-all-imports-in-current-layer')

/*
 * Recursively replaces all imports
 */
async function replaceAllImportsRecursively(fileContent, dir, ctx) {
	let content = fileContent
	while (true) {
		const importObjs = await findAllImportPaths(dir, content, ctx)
		if (!importObjs || importObjs.length === 0) return content
		content = await replaceAllImportsInCurrentLayer(importObjs, content, dir, ctx)
	}
}

module.exports = replaceAllImportsRecursively
