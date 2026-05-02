// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf188 {
	uint256 public value188;
	function set188(uint256 v) external { value188 = v; }
	function double188() external view returns (uint256) { return value188 * 2; }
	mapping(address => uint256) public balances188;
	event Updated188(address indexed who, uint256 v);
}
