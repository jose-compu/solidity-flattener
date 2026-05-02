// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf153 {
	uint256 public value153;
	function set153(uint256 v) external { value153 = v; }
	function double153() external view returns (uint256) { return value153 * 2; }
	mapping(address => uint256) public balances153;
	event Updated153(address indexed who, uint256 v);
}
