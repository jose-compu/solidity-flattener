// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf137 {
	uint256 public value137;
	function set137(uint256 v) external { value137 = v; }
	function double137() external view returns (uint256) { return value137 * 2; }
	mapping(address => uint256) public balances137;
	event Updated137(address indexed who, uint256 v);
}
