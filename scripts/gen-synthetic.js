#! /usr/bin/env node
'use strict'
// Generate a synthetic Solidity project for benchmarking.
// Tree shape: 1 entry contract that imports N "leaf" contracts.
const fs = require('fs')
const path = require('path')

const N = parseInt(process.argv[2] || '40', 10)
const ROOT = path.resolve(__dirname, '..', 'demo-large/src')

fs.rmSync(path.dirname(ROOT), { recursive: true, force: true })
fs.mkdirSync(ROOT, { recursive: true })

// Leaf contracts
for (let i = 0; i < N; i++) {
	const body = `// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf${i} {
	uint256 public value${i};
	function set${i}(uint256 v) external { value${i} = v; }
	function double${i}() external view returns (uint256) { return value${i} * 2; }
	mapping(address => uint256) public balances${i};
	event Updated${i}(address indexed who, uint256 v);
}
`
	fs.writeFileSync(path.join(ROOT, `Leaf${i}.sol`), body)
}

// Entry contract
const imports = Array.from({ length: N }, (_, i) => `import "./Leaf${i}.sol";`).join('\n')
const inherits = Array.from({ length: N }, (_, i) => `Leaf${i}`).join(', ')
const entry = `// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

${imports}

contract Entry is ${inherits} {
	function ping() external pure returns (string memory) { return "ok"; }
}
`
fs.writeFileSync(path.join(ROOT, 'Entry.sol'), entry)

console.log(`Generated ${N + 1} files in demo-large/src/`)
