// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf167 {
	uint256 public value167;
	function set167(uint256 v) external { value167 = v; }
	function double167() external view returns (uint256) { return value167 * 2; }
	mapping(address => uint256) public balances167;
	event Updated167(address indexed who, uint256 v);
}
