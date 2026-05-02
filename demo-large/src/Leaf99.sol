// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf99 {
	uint256 public value99;
	function set99(uint256 v) external { value99 = v; }
	function double99() external view returns (uint256) { return value99 * 2; }
	mapping(address => uint256) public balances99;
	event Updated99(address indexed who, uint256 v);
}
