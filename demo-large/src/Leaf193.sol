// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf193 {
	uint256 public value193;
	function set193(uint256 v) external { value193 = v; }
	function double193() external view returns (uint256) { return value193 * 2; }
	mapping(address => uint256) public balances193;
	event Updated193(address indexed who, uint256 v);
}
