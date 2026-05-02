const fsp = require('fs/promises')
const fg = require('fast-glob')

/**
 * Create a fresh per-call context. Holds:
 *   - importedSrcFiles: tracks which deps have already been inlined
 *   - file/glob/exists caches: dedupe I/O within a single flatten run
 *
 * Each `flatten()` invocation gets its own context, so concurrent or repeated
 * calls don't share state.
 */
function createContext() {
	const fileCache = new Map()
	const globCache = new Map()
	const existsCache = new Map()

	return {
		importedSrcFiles: new Map(),

		async readFile(filePath) {
			let v = fileCache.get(filePath)
			if (v === undefined) {
				v = await fsp.readFile(filePath, 'utf8')
				fileCache.set(filePath, v)
			}
			return v
		},

		async glob(pattern) {
			let v = globCache.get(pattern)
			if (v === undefined) {
				v = await fg(pattern)
				globCache.set(pattern, v)
			}
			return v
		},

		async exists(filePath) {
			let v = existsCache.get(filePath)
			if (v === undefined) {
				v = await fsp.access(filePath).then(() => true, () => false)
				existsCache.set(filePath, v)
			}
			return v
		},
	}
}

module.exports = { createContext }
