// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf179 {
	uint256 public value179;
	function set179(uint256 v) external { value179 = v; }
	function double179() external view returns (uint256) { return value179 * 2; }
	mapping(address => uint256) public balances179;
	event Updated179(address indexed who, uint256 v);
}
