// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf174 {
	uint256 public value174;
	function set174(uint256 v) external { value174 = v; }
	function double174() external view returns (uint256) { return value174 * 2; }
	mapping(address => uint256) public balances174;
	event Updated174(address indexed who, uint256 v);
}
