// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf116 {
	uint256 public value116;
	function set116(uint256 v) external { value116 = v; }
	function double116() external view returns (uint256) { return value116 * 2; }
	mapping(address => uint256) public balances116;
	event Updated116(address indexed who, uint256 v);
}
