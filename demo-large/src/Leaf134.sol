// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf134 {
	uint256 public value134;
	function set134(uint256 v) external { value134 = v; }
	function double134() external view returns (uint256) { return value134 * 2; }
	mapping(address => uint256) public balances134;
	event Updated134(address indexed who, uint256 v);
}
