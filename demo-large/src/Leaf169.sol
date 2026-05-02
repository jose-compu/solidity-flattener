// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf169 {
	uint256 public value169;
	function set169(uint256 v) external { value169 = v; }
	function double169() external view returns (uint256) { return value169 * 2; }
	mapping(address => uint256) public balances169;
	event Updated169(address indexed who, uint256 v);
}
