// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf23 {
	uint256 public value23;
	function set23(uint256 v) external { value23 = v; }
	function double23() external view returns (uint256) { return value23 * 2; }
	mapping(address => uint256) public balances23;
	event Updated23(address indexed who, uint256 v);
}
