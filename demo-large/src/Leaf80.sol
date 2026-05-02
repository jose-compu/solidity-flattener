// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf80 {
	uint256 public value80;
	function set80(uint256 v) external { value80 = v; }
	function double80() external view returns (uint256) { return value80 * 2; }
	mapping(address => uint256) public balances80;
	event Updated80(address indexed who, uint256 v);
}
