// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf166 {
	uint256 public value166;
	function set166(uint256 v) external { value166 = v; }
	function double166() external view returns (uint256) { return value166 * 2; }
	mapping(address => uint256) public balances166;
	event Updated166(address indexed who, uint256 v);
}
