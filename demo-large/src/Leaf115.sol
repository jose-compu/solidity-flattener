// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf115 {
	uint256 public value115;
	function set115(uint256 v) external { value115 = v; }
	function double115() external view returns (uint256) { return value115 * 2; }
	mapping(address => uint256) public balances115;
	event Updated115(address indexed who, uint256 v);
}
