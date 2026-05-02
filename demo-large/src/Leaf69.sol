// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf69 {
	uint256 public value69;
	function set69(uint256 v) external { value69 = v; }
	function double69() external view returns (uint256) { return value69 * 2; }
	mapping(address => uint256) public balances69;
	event Updated69(address indexed who, uint256 v);
}
