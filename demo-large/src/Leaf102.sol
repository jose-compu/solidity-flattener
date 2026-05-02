// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf102 {
	uint256 public value102;
	function set102(uint256 v) external { value102 = v; }
	function double102() external view returns (uint256) { return value102 * 2; }
	mapping(address => uint256) public balances102;
	event Updated102(address indexed who, uint256 v);
}
