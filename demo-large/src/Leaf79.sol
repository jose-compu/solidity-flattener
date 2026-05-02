// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf79 {
	uint256 public value79;
	function set79(uint256 v) external { value79 = v; }
	function double79() external view returns (uint256) { return value79 * 2; }
	mapping(address => uint256) public balances79;
	event Updated79(address indexed who, uint256 v);
}
