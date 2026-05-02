// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf125 {
	uint256 public value125;
	function set125(uint256 v) external { value125 = v; }
	function double125() external view returns (uint256) { return value125 * 2; }
	mapping(address => uint256) public balances125;
	event Updated125(address indexed who, uint256 v);
}
