// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf19 {
	uint256 public value19;
	function set19(uint256 v) external { value19 = v; }
	function double19() external view returns (uint256) { return value19 * 2; }
	mapping(address => uint256) public balances19;
	event Updated19(address indexed who, uint256 v);
}
