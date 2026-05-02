// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf48 {
	uint256 public value48;
	function set48(uint256 v) external { value48 = v; }
	function double48() external view returns (uint256) { return value48 * 2; }
	mapping(address => uint256) public balances48;
	event Updated48(address indexed who, uint256 v);
}
