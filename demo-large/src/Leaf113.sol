// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf113 {
	uint256 public value113;
	function set113(uint256 v) external { value113 = v; }
	function double113() external view returns (uint256) { return value113 * 2; }
	mapping(address => uint256) public balances113;
	event Updated113(address indexed who, uint256 v);
}
