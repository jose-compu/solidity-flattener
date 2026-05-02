// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf39 {
	uint256 public value39;
	function set39(uint256 v) external { value39 = v; }
	function double39() external view returns (uint256) { return value39 * 2; }
	mapping(address => uint256) public balances39;
	event Updated39(address indexed who, uint256 v);
}
