// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf67 {
	uint256 public value67;
	function set67(uint256 v) external { value67 = v; }
	function double67() external view returns (uint256) { return value67 * 2; }
	mapping(address => uint256) public balances67;
	event Updated67(address indexed who, uint256 v);
}
