// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf65 {
	uint256 public value65;
	function set65(uint256 v) external { value65 = v; }
	function double65() external view returns (uint256) { return value65 * 2; }
	mapping(address => uint256) public balances65;
	event Updated65(address indexed who, uint256 v);
}
