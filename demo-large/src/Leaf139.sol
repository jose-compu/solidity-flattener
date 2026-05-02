// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf139 {
	uint256 public value139;
	function set139(uint256 v) external { value139 = v; }
	function double139() external view returns (uint256) { return value139 * 2; }
	mapping(address => uint256) public balances139;
	event Updated139(address indexed who, uint256 v);
}
