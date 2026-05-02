// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf146 {
	uint256 public value146;
	function set146(uint256 v) external { value146 = v; }
	function double146() external view returns (uint256) { return value146 * 2; }
	mapping(address => uint256) public balances146;
	event Updated146(address indexed who, uint256 v);
}
