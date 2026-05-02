// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf106 {
	uint256 public value106;
	function set106(uint256 v) external { value106 = v; }
	function double106() external view returns (uint256) { return value106 * 2; }
	mapping(address => uint256) public balances106;
	event Updated106(address indexed who, uint256 v);
}
