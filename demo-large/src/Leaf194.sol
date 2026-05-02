// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf194 {
	uint256 public value194;
	function set194(uint256 v) external { value194 = v; }
	function double194() external view returns (uint256) { return value194 * 2; }
	mapping(address => uint256) public balances194;
	event Updated194(address indexed who, uint256 v);
}
