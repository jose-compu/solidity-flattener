// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf34 {
	uint256 public value34;
	function set34(uint256 v) external { value34 = v; }
	function double34() external view returns (uint256) { return value34 * 2; }
	mapping(address => uint256) public balances34;
	event Updated34(address indexed who, uint256 v);
}
