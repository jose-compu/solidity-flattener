// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf184 {
	uint256 public value184;
	function set184(uint256 v) external { value184 = v; }
	function double184() external view returns (uint256) { return value184 * 2; }
	mapping(address => uint256) public balances184;
	event Updated184(address indexed who, uint256 v);
}
