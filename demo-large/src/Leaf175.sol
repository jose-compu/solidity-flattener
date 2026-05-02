// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf175 {
	uint256 public value175;
	function set175(uint256 v) external { value175 = v; }
	function double175() external view returns (uint256) { return value175 * 2; }
	mapping(address => uint256) public balances175;
	event Updated175(address indexed who, uint256 v);
}
