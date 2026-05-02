// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf72 {
	uint256 public value72;
	function set72(uint256 v) external { value72 = v; }
	function double72() external view returns (uint256) { return value72 * 2; }
	mapping(address => uint256) public balances72;
	event Updated72(address indexed who, uint256 v);
}
