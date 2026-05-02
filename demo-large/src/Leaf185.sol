// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf185 {
	uint256 public value185;
	function set185(uint256 v) external { value185 = v; }
	function double185() external view returns (uint256) { return value185 * 2; }
	mapping(address => uint256) public balances185;
	event Updated185(address indexed who, uint256 v);
}
