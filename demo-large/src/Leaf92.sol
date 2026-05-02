// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf92 {
	uint256 public value92;
	function set92(uint256 v) external { value92 = v; }
	function double92() external view returns (uint256) { return value92 * 2; }
	mapping(address => uint256) public balances92;
	event Updated92(address indexed who, uint256 v);
}
