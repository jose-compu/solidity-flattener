// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf37 {
	uint256 public value37;
	function set37(uint256 v) external { value37 = v; }
	function double37() external view returns (uint256) { return value37 * 2; }
	mapping(address => uint256) public balances37;
	event Updated37(address indexed who, uint256 v);
}
