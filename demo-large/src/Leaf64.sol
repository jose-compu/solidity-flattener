// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf64 {
	uint256 public value64;
	function set64(uint256 v) external { value64 = v; }
	function double64() external view returns (uint256) { return value64 * 2; }
	mapping(address => uint256) public balances64;
	event Updated64(address indexed who, uint256 v);
}
