const assert = require('assert')
const path = require('path')
const { createContext } = require('../../helpers/context')

const FIXTURE = path.resolve(__dirname, '..', 'contracts', 'dep.sol')
const FIXTURE_DIR_GLOB = path.resolve(__dirname, '..', 'contracts') + '/*.sol'

describe('context', () => {
	it('readFile caches results within a context', async () => {
		const ctx = createContext()
		const a = await ctx.readFile(FIXTURE)
		const b = await ctx.readFile(FIXTURE)
		assert.strictEqual(a, b)
		assert.ok(a.includes('contract Dep'))
	})

	it('two contexts have independent caches', async () => {
		const ctx1 = createContext()
		const ctx2 = createContext()
		await ctx1.readFile(FIXTURE)
		// ctx2 cache should still be empty (we can't introspect directly,
		// but we can verify it doesn't leak importedSrcFiles)
		ctx1.importedSrcFiles.set('foo.sol', 'bar')
		assert.ok(!ctx2.importedSrcFiles.has('foo.sol'))
	})

	it('glob caches results within a context', async () => {
		const ctx = createContext()
		const a = await ctx.glob(FIXTURE_DIR_GLOB)
		const b = await ctx.glob(FIXTURE_DIR_GLOB)
		assert.deepStrictEqual(a, b)
		assert.ok(a.length > 0)
	})

	it('exists caches both true and false results', async () => {
		const ctx = createContext()
		assert.strictEqual(await ctx.exists(FIXTURE), true)
		assert.strictEqual(await ctx.exists(FIXTURE), true)
		assert.strictEqual(await ctx.exists('/this/does/not/exist.sol'), false)
		assert.strictEqual(await ctx.exists('/this/does/not/exist.sol'), false)
	})

	it('importedSrcFiles is a fresh Map per context', () => {
		const ctx = createContext()
		assert.ok(ctx.importedSrcFiles instanceof Map)
		assert.strictEqual(ctx.importedSrcFiles.size, 0)
	})
})
