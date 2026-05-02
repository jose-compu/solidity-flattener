// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf30 {
	uint256 public value30;
	function set30(uint256 v) external { value30 = v; }
	function double30() external view returns (uint256) { return value30 * 2; }
	mapping(address => uint256) public balances30;
	event Updated30(address indexed who, uint256 v);
}
