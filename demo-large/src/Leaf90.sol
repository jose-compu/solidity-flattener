// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf90 {
	uint256 public value90;
	function set90(uint256 v) external { value90 = v; }
	function double90() external view returns (uint256) { return value90 * 2; }
	mapping(address => uint256) public balances90;
	event Updated90(address indexed who, uint256 v);
}
