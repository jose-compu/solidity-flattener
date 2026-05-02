// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf22 {
	uint256 public value22;
	function set22(uint256 v) external { value22 = v; }
	function double22() external view returns (uint256) { return value22 * 2; }
	mapping(address => uint256) public balances22;
	event Updated22(address indexed who, uint256 v);
}
