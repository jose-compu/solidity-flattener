// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf81 {
	uint256 public value81;
	function set81(uint256 v) external { value81 = v; }
	function double81() external view returns (uint256) { return value81 * 2; }
	mapping(address => uint256) public balances81;
	event Updated81(address indexed who, uint256 v);
}
