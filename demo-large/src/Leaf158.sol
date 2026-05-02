// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf158 {
	uint256 public value158;
	function set158(uint256 v) external { value158 = v; }
	function double158() external view returns (uint256) { return value158 * 2; }
	mapping(address => uint256) public balances158;
	event Updated158(address indexed who, uint256 v);
}
