// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf28 {
	uint256 public value28;
	function set28(uint256 v) external { value28 = v; }
	function double28() external view returns (uint256) { return value28 * 2; }
	mapping(address => uint256) public balances28;
	event Updated28(address indexed who, uint256 v);
}
