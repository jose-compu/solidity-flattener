const fs = require('fs')
const assert = require('assert')
const constants = require('../../helpers/constants')
const changeRelativePathToAbsolute = require('../../helpers/change-relative-path-to-absolute.js')
const { createContext } = require('../../helpers/context')

const dir = './test/contracts'
const filePath = dir + '/test.sol'
const editedFilePath = dir + '/testMock1.sol'
const expectedFileContentNew = fs.readFileSync(editedFilePath, constants.UTF8)

describe('changeRelativePathToAbsolute', () => {
	it('rewrites relative imports to dir-prefixed paths', async () => {
		const ctx = createContext()
		const fileContentNew = await changeRelativePathToAbsolute(filePath, ctx)
		assert.strictEqual(fileContentNew, expectedFileContentNew)
	})

	it('returns content unchanged when there are no imports to rewrite', async () => {
		const ctx = createContext()
		// dep.sol has no imports — must come back byte-for-byte
		const original = fs.readFileSync(dir + '/dep.sol', constants.UTF8)
		const out = await changeRelativePathToAbsolute(dir + '/dep.sol', ctx)
		assert.strictEqual(out, original)
	})
})
