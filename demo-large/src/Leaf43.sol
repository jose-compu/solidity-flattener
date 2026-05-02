// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf43 {
	uint256 public value43;
	function set43(uint256 v) external { value43 = v; }
	function double43() external view returns (uint256) { return value43 * 2; }
	mapping(address => uint256) public balances43;
	event Updated43(address indexed who, uint256 v);
}
