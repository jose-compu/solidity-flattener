// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf12 {
	uint256 public value12;
	function set12(uint256 v) external { value12 = v; }
	function double12() external view returns (uint256) { return value12 * 2; }
	mapping(address => uint256) public balances12;
	event Updated12(address indexed who, uint256 v);
}
