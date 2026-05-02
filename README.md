# Solidity smart-contract flattened source file generation

[![Build Status](https://travis-ci.org/poanetwork/solidity-flattener.svg?branch=master)](https://travis-ci.org/poanetwork/solidity-flattener)
[![Known Vulnerabilities](https://snyk.io/test/github/poanetwork/solidity-flattener/badge.svg)](https://snyk.io/test/github/poanetwork/solidity-flattener)
[![Coverage Status](https://coveralls.io/repos/github/poanetwork/solidity-flattener/badge.svg?branch=master)](https://coveralls.io/github/poanetwork/solidity-flattener?branch=master)

Benchmark comparison (cumulative):

```
  ┌────────────────────────┬───────────────────────────┬─────────┬─────────┬─────────────┐
  │        Workload        │          Version          │  mean   │ ops/sec │ vs original │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │ Demo (8 files)         │ Original                  │ 4.84ms  │ 207     │ —           │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 1 (modern deps)      │ 3.71ms  │ 269     │ −23%        │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 2 (clean async)      │ 3.67ms  │ 273     │ −24%        │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 3 (parallel + cache) │ 3.79ms  │ 264     │ −22%        │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 4 (per-call ctx)     │ 3.29ms  │ 304     │ −32%        │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │ Synthetic (40 leaves)  │ Original                  │ 3.65ms  │ 274     │ —           │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 4                    │ 2.10ms* │ ~475    │ ~−42%       │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │ Synthetic (200 leaves) │ Original                  │ 18.79ms │ 53      │ —           │
  ├────────────────────────┼───────────────────────────┼─────────┼─────────┼─────────────┤
  │                        │ Step 4                    │ 13.33ms │ 75      │ −29%        │
  └────────────────────────┴───────────────────────────┴─────────┴─────────┴─────────────┘
```

## Utility to combine all imports to one flatten .sol file

### Installation from npm

`npm i @poanet/solidity-flattener`

### Usage

`./node_modules/.bin/poa-solidity-flattener ./contracts/example.sol`

It will save flattened source of Solidity smart-contract into `./out` directory

### Installation from source


```
git clone https://github.com/poanetwork/solidity-flattener
cd solidity-flattener
npm install
```

You can start script either

```
npm start "path_to_not_flat_contract_definition_file.sol"
```

or without paramaters (path to input file will be extracted from `./config.json`)

```
npm start
```



Expected result: 

```
Success! Flat file ORIGINAL_FILE_NAME_flat.sol is generated to ./out directory
```

`./flatContract.sol` - flat .sol file is created in output directory (`./out/` by default)

**Note:** *utility doesn't support aliases at import statements*

## Config

path `./config.json`

```
{
	"inputFilePath": "./demo/src/Oracles.sol",
	"outputDir": "./out"
}
```

