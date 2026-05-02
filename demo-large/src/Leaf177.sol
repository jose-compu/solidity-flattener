// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf177 {
	uint256 public value177;
	function set177(uint256 v) external { value177 = v; }
	function double177() external view returns (uint256) { return value177 * 2; }
	mapping(address => uint256) public balances177;
	event Updated177(address indexed who, uint256 v);
}
