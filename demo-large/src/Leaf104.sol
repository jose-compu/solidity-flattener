// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf104 {
	uint256 public value104;
	function set104(uint256 v) external { value104 = v; }
	function double104() external view returns (uint256) { return value104 * 2; }
	mapping(address => uint256) public balances104;
	event Updated104(address indexed who, uint256 v);
}
