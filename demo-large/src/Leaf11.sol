// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf11 {
	uint256 public value11;
	function set11(uint256 v) external { value11 = v; }
	function double11() external view returns (uint256) { return value11 * 2; }
	mapping(address => uint256) public balances11;
	event Updated11(address indexed who, uint256 v);
}
