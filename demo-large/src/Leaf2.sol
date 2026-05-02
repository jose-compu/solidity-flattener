// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf2 {
	uint256 public value2;
	function set2(uint256 v) external { value2 = v; }
	function double2() external view returns (uint256) { return value2 * 2; }
	mapping(address => uint256) public balances2;
	event Updated2(address indexed who, uint256 v);
}
