// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf83 {
	uint256 public value83;
	function set83(uint256 v) external { value83 = v; }
	function double83() external view returns (uint256) { return value83 * 2; }
	mapping(address => uint256) public balances83;
	event Updated83(address indexed who, uint256 v);
}
