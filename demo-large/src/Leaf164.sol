// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf164 {
	uint256 public value164;
	function set164(uint256 v) external { value164 = v; }
	function double164() external view returns (uint256) { return value164 * 2; }
	mapping(address => uint256) public balances164;
	event Updated164(address indexed who, uint256 v);
}
