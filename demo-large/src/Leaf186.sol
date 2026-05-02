// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf186 {
	uint256 public value186;
	function set186(uint256 v) external { value186 = v; }
	function double186() external view returns (uint256) { return value186 * 2; }
	mapping(address => uint256) public balances186;
	event Updated186(address indexed who, uint256 v);
}
