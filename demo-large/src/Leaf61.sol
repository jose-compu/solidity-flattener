// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf61 {
	uint256 public value61;
	function set61(uint256 v) external { value61 = v; }
	function double61() external view returns (uint256) { return value61 * 2; }
	mapping(address => uint256) public balances61;
	event Updated61(address indexed who, uint256 v);
}
