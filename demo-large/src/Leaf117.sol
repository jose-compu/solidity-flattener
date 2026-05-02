// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf117 {
	uint256 public value117;
	function set117(uint256 v) external { value117 = v; }
	function double117() external view returns (uint256) { return value117 * 2; }
	mapping(address => uint256) public balances117;
	event Updated117(address indexed who, uint256 v);
}
