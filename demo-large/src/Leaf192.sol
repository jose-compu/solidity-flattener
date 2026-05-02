// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf192 {
	uint256 public value192;
	function set192(uint256 v) external { value192 = v; }
	function double192() external view returns (uint256) { return value192 * 2; }
	mapping(address => uint256) public balances192;
	event Updated192(address indexed who, uint256 v);
}
