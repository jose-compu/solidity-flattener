// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf63 {
	uint256 public value63;
	function set63(uint256 v) external { value63 = v; }
	function double63() external view returns (uint256) { return value63 * 2; }
	mapping(address => uint256) public balances63;
	event Updated63(address indexed who, uint256 v);
}
