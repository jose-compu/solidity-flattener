// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf0 {
	uint256 public value0;
	function set0(uint256 v) external { value0 = v; }
	function double0() external view returns (uint256) { return value0 * 2; }
	mapping(address => uint256) public balances0;
	event Updated0(address indexed who, uint256 v);
}
