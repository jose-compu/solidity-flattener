// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf196 {
	uint256 public value196;
	function set196(uint256 v) external { value196 = v; }
	function double196() external view returns (uint256) { return value196 * 2; }
	mapping(address => uint256) public balances196;
	event Updated196(address indexed who, uint256 v);
}
