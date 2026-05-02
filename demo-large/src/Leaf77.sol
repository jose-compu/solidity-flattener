// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf77 {
	uint256 public value77;
	function set77(uint256 v) external { value77 = v; }
	function double77() external view returns (uint256) { return value77 * 2; }
	mapping(address => uint256) public balances77;
	event Updated77(address indexed who, uint256 v);
}
