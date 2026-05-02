// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf42 {
	uint256 public value42;
	function set42(uint256 v) external { value42 = v; }
	function double42() external view returns (uint256) { return value42 * 2; }
	mapping(address => uint256) public balances42;
	event Updated42(address indexed who, uint256 v);
}
