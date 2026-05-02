// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf150 {
	uint256 public value150;
	function set150(uint256 v) external { value150 = v; }
	function double150() external view returns (uint256) { return value150 * 2; }
	mapping(address => uint256) public balances150;
	event Updated150(address indexed who, uint256 v);
}
