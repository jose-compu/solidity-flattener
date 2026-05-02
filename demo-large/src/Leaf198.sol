// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf198 {
	uint256 public value198;
	function set198(uint256 v) external { value198 = v; }
	function double198() external view returns (uint256) { return value198 * 2; }
	mapping(address => uint256) public balances198;
	event Updated198(address indexed who, uint256 v);
}
