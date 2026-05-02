// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf183 {
	uint256 public value183;
	function set183(uint256 v) external { value183 = v; }
	function double183() external view returns (uint256) { return value183 * 2; }
	mapping(address => uint256) public balances183;
	event Updated183(address indexed who, uint256 v);
}
