// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf140 {
	uint256 public value140;
	function set140(uint256 v) external { value140 = v; }
	function double140() external view returns (uint256) { return value140 * 2; }
	mapping(address => uint256) public balances140;
	event Updated140(address indexed who, uint256 v);
}
