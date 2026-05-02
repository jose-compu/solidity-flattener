const assert = require('assert')
const os = require('os')
const {
	deduplicateLicenses,
	deduplicateSolidityVersoins,
	deduplicateSolidityExpHeaders,
} = require('../../helpers/deduplicate-lines')

const EOL = os.EOL

describe('deduplicate-lines', () => {
	describe('deduplicateLicenses', () => {
		it('keeps the first SPDX line and blanks subsequent ones', () => {
			const input = [
				'// SPDX-License-Identifier: MIT',
				'pragma solidity ^0.8.0;',
				'// SPDX-License-Identifier: MIT',
				'contract A {}',
			].join(EOL)
			const out = deduplicateLicenses(input)
			const spdxLines = out.split(EOL).filter(l => l.trim().startsWith('// SPDX'))
			assert.strictEqual(spdxLines.length, 1)
		})

		it('handles both spacing variants of SPDX header', () => {
			const input = [
				'// SPDX-License-Identifier: MIT',
				'//SPDX-License-Identifier: Apache-2.0',
				'contract X {}',
			].join(EOL)
			const out = deduplicateLicenses(input)
			const spdxLines = out.split(EOL).filter(l => l.includes('SPDX'))
			assert.strictEqual(spdxLines.length, 1)
		})

		it('is a no-op when there is only one license', () => {
			const input = '// SPDX-License-Identifier: MIT' + EOL + 'contract A {}'
			const out = deduplicateLicenses(input)
			assert.ok(out.includes('// SPDX-License-Identifier: MIT'))
		})
	})

	describe('deduplicateSolidityVersoins', () => {
		it('keeps the first pragma solidity, blanks rest', () => {
			const input = [
				'pragma solidity ^0.8.0;',
				'contract A {}',
				'pragma solidity ^0.8.0;',
				'contract B {}',
			].join(EOL)
			const out = deduplicateSolidityVersoins(input)
			const pragmas = out.split(EOL).filter(l => l.trim().startsWith('pragma solidity'))
			assert.strictEqual(pragmas.length, 1)
		})
	})

	describe('deduplicateSolidityExpHeaders', () => {
		it('keeps the first pragma experimental, blanks rest', () => {
			const input = [
				'pragma experimental ABIEncoderV2;',
				'contract A {}',
				'pragma experimental ABIEncoderV2;',
				'contract B {}',
			].join(EOL)
			const out = deduplicateSolidityExpHeaders(input)
			const headers = out.split(EOL).filter(l => l.trim().startsWith('pragma experimental'))
			assert.strictEqual(headers.length, 1)
		})
	})
})
