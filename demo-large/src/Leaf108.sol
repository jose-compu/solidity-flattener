// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf108 {
	uint256 public value108;
	function set108(uint256 v) external { value108 = v; }
	function double108() external view returns (uint256) { return value108 * 2; }
	mapping(address => uint256) public balances108;
	event Updated108(address indexed who, uint256 v);
}
