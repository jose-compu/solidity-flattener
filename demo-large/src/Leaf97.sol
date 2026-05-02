// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf97 {
	uint256 public value97;
	function set97(uint256 v) external { value97 = v; }
	function double97() external view returns (uint256) { return value97 * 2; }
	mapping(address => uint256) public balances97;
	event Updated97(address indexed who, uint256 v);
}
