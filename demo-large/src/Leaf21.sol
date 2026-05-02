// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf21 {
	uint256 public value21;
	function set21(uint256 v) external { value21 = v; }
	function double21() external view returns (uint256) { return value21 * 2; }
	mapping(address => uint256) public balances21;
	event Updated21(address indexed who, uint256 v);
}
