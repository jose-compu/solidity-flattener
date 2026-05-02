// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf170 {
	uint256 public value170;
	function set170(uint256 v) external { value170 = v; }
	function double170() external view returns (uint256) { return value170 * 2; }
	mapping(address => uint256) public balances170;
	event Updated170(address indexed who, uint256 v);
}
