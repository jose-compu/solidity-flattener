// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf162 {
	uint256 public value162;
	function set162(uint256 v) external { value162 = v; }
	function double162() external view returns (uint256) { return value162 * 2; }
	mapping(address => uint256) public balances162;
	event Updated162(address indexed who, uint256 v);
}
