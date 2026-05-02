// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf95 {
	uint256 public value95;
	function set95(uint256 v) external { value95 = v; }
	function double95() external view returns (uint256) { return value95 * 2; }
	mapping(address => uint256) public balances95;
	event Updated95(address indexed who, uint256 v);
}
