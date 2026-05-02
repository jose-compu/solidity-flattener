// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf32 {
	uint256 public value32;
	function set32(uint256 v) external { value32 = v; }
	function double32() external view returns (uint256) { return value32 * 2; }
	mapping(address => uint256) public balances32;
	event Updated32(address indexed who, uint256 v);
}
