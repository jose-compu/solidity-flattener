// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf126 {
	uint256 public value126;
	function set126(uint256 v) external { value126 = v; }
	function double126() external view returns (uint256) { return value126 * 2; }
	mapping(address => uint256) public balances126;
	event Updated126(address indexed who, uint256 v);
}
