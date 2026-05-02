// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf91 {
	uint256 public value91;
	function set91(uint256 v) external { value91 = v; }
	function double91() external view returns (uint256) { return value91 * 2; }
	mapping(address => uint256) public balances91;
	event Updated91(address indexed who, uint256 v);
}
