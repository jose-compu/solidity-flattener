// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf131 {
	uint256 public value131;
	function set131(uint256 v) external { value131 = v; }
	function double131() external view returns (uint256) { return value131 * 2; }
	mapping(address => uint256) public balances131;
	event Updated131(address indexed who, uint256 v);
}
