// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf189 {
	uint256 public value189;
	function set189(uint256 v) external { value189 = v; }
	function double189() external view returns (uint256) { return value189 * 2; }
	mapping(address => uint256) public balances189;
	event Updated189(address indexed who, uint256 v);
}
