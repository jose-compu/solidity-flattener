// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf93 {
	uint256 public value93;
	function set93(uint256 v) external { value93 = v; }
	function double93() external view returns (uint256) { return value93 * 2; }
	mapping(address => uint256) public balances93;
	event Updated93(address indexed who, uint256 v);
}
