// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf13 {
	uint256 public value13;
	function set13(uint256 v) external { value13 = v; }
	function double13() external view returns (uint256) { return value13 * 2; }
	mapping(address => uint256) public balances13;
	event Updated13(address indexed who, uint256 v);
}
