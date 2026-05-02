// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf135 {
	uint256 public value135;
	function set135(uint256 v) external { value135 = v; }
	function double135() external view returns (uint256) { return value135 * 2; }
	mapping(address => uint256) public balances135;
	event Updated135(address indexed who, uint256 v);
}
