// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf8 {
	uint256 public value8;
	function set8(uint256 v) external { value8 = v; }
	function double8() external view returns (uint256) { return value8 * 2; }
	mapping(address => uint256) public balances8;
	event Updated8(address indexed who, uint256 v);
}
