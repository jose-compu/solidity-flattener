// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf138 {
	uint256 public value138;
	function set138(uint256 v) external { value138 = v; }
	function double138() external view returns (uint256) { return value138 * 2; }
	mapping(address => uint256) public balances138;
	event Updated138(address indexed who, uint256 v);
}
