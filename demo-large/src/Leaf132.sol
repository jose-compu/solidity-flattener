// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf132 {
	uint256 public value132;
	function set132(uint256 v) external { value132 = v; }
	function double132() external view returns (uint256) { return value132 * 2; }
	mapping(address => uint256) public balances132;
	event Updated132(address indexed who, uint256 v);
}
