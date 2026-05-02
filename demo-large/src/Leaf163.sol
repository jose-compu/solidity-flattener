// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf163 {
	uint256 public value163;
	function set163(uint256 v) external { value163 = v; }
	function double163() external view returns (uint256) { return value163 * 2; }
	mapping(address => uint256) public balances163;
	event Updated163(address indexed who, uint256 v);
}
