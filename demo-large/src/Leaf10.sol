// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf10 {
	uint256 public value10;
	function set10(uint256 v) external { value10 = v; }
	function double10() external view returns (uint256) { return value10 * 2; }
	mapping(address => uint256) public balances10;
	event Updated10(address indexed who, uint256 v);
}
