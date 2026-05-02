// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf59 {
	uint256 public value59;
	function set59(uint256 v) external { value59 = v; }
	function double59() external view returns (uint256) { return value59 * 2; }
	mapping(address => uint256) public balances59;
	event Updated59(address indexed who, uint256 v);
}
