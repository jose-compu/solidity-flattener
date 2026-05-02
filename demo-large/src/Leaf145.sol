// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf145 {
	uint256 public value145;
	function set145(uint256 v) external { value145 = v; }
	function double145() external view returns (uint256) { return value145 * 2; }
	mapping(address => uint256) public balances145;
	event Updated145(address indexed who, uint256 v);
}
