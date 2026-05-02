// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf118 {
	uint256 public value118;
	function set118(uint256 v) external { value118 = v; }
	function double118() external view returns (uint256) { return value118 * 2; }
	mapping(address => uint256) public balances118;
	event Updated118(address indexed who, uint256 v);
}
