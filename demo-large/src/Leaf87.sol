// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf87 {
	uint256 public value87;
	function set87(uint256 v) external { value87 = v; }
	function double87() external view returns (uint256) { return value87 * 2; }
	mapping(address => uint256) public balances87;
	event Updated87(address indexed who, uint256 v);
}
