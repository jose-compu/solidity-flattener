// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf172 {
	uint256 public value172;
	function set172(uint256 v) external { value172 = v; }
	function double172() external view returns (uint256) { return value172 * 2; }
	mapping(address => uint256) public balances172;
	event Updated172(address indexed who, uint256 v);
}
