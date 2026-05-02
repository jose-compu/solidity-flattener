// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf180 {
	uint256 public value180;
	function set180(uint256 v) external { value180 = v; }
	function double180() external view returns (uint256) { return value180 * 2; }
	mapping(address => uint256) public balances180;
	event Updated180(address indexed who, uint256 v);
}
