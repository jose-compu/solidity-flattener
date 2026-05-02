// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf161 {
	uint256 public value161;
	function set161(uint256 v) external { value161 = v; }
	function double161() external view returns (uint256) { return value161 * 2; }
	mapping(address => uint256) public balances161;
	event Updated161(address indexed who, uint256 v);
}
