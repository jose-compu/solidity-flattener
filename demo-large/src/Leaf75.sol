// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf75 {
	uint256 public value75;
	function set75(uint256 v) external { value75 = v; }
	function double75() external view returns (uint256) { return value75 * 2; }
	mapping(address => uint256) public balances75;
	event Updated75(address indexed who, uint256 v);
}
