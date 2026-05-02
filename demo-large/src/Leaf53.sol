// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf53 {
	uint256 public value53;
	function set53(uint256 v) external { value53 = v; }
	function double53() external view returns (uint256) { return value53 * 2; }
	mapping(address => uint256) public balances53;
	event Updated53(address indexed who, uint256 v);
}
