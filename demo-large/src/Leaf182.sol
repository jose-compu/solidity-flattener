// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf182 {
	uint256 public value182;
	function set182(uint256 v) external { value182 = v; }
	function double182() external view returns (uint256) { return value182 * 2; }
	mapping(address => uint256) public balances182;
	event Updated182(address indexed who, uint256 v);
}
