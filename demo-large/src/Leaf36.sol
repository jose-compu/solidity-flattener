// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf36 {
	uint256 public value36;
	function set36(uint256 v) external { value36 = v; }
	function double36() external view returns (uint256) { return value36 * 2; }
	mapping(address => uint256) public balances36;
	event Updated36(address indexed who, uint256 v);
}
