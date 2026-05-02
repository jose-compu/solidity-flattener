// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf41 {
	uint256 public value41;
	function set41(uint256 v) external { value41 = v; }
	function double41() external view returns (uint256) { return value41 * 2; }
	mapping(address => uint256) public balances41;
	event Updated41(address indexed who, uint256 v);
}
