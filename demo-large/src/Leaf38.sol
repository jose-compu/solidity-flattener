// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf38 {
	uint256 public value38;
	function set38(uint256 v) external { value38 = v; }
	function double38() external view returns (uint256) { return value38 * 2; }
	mapping(address => uint256) public balances38;
	event Updated38(address indexed who, uint256 v);
}
