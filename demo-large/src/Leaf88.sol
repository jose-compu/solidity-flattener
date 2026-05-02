// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf88 {
	uint256 public value88;
	function set88(uint256 v) external { value88 = v; }
	function double88() external view returns (uint256) { return value88 * 2; }
	mapping(address => uint256) public balances88;
	event Updated88(address indexed who, uint256 v);
}
