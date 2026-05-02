// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf197 {
	uint256 public value197;
	function set197(uint256 v) external { value197 = v; }
	function double197() external view returns (uint256) { return value197 * 2; }
	mapping(address => uint256) public balances197;
	event Updated197(address indexed who, uint256 v);
}
