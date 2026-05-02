// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf18 {
	uint256 public value18;
	function set18(uint256 v) external { value18 = v; }
	function double18() external view returns (uint256) { return value18 * 2; }
	mapping(address => uint256) public balances18;
	event Updated18(address indexed who, uint256 v);
}
