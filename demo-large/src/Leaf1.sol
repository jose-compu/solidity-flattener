// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf1 {
	uint256 public value1;
	function set1(uint256 v) external { value1 = v; }
	function double1() external view returns (uint256) { return value1 * 2; }
	mapping(address => uint256) public balances1;
	event Updated1(address indexed who, uint256 v);
}
