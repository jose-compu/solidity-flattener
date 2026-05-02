const js = require('@eslint/js')

module.exports = [
	js.configs.recommended,
	{
		languageOptions: {
			ecmaVersion: 2022,
			sourceType: 'commonjs',
			globals: {
				require: 'readonly',
				module: 'readonly',
				exports: 'readonly',
				__dirname: 'readonly',
				__filename: 'readonly',
				process: 'readonly',
				console: 'readonly',
			},
		},
		rules: {
			indent: ['error', 'tab'],
			'linebreak-style': ['error', 'unix'],
			quotes: ['error', 'single'],
			semi: ['error', 'never'],
			'no-trailing-spaces': 'error',
		},
	},
	{
		files: ['test/**/*.js', 'benchmark.js'],
		languageOptions: {
			globals: {
				describe: 'readonly',
				it: 'readonly',
				before: 'readonly',
				after: 'readonly',
			},
		},
	},
]
