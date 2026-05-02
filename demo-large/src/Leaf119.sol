// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf119 {
	uint256 public value119;
	function set119(uint256 v) external { value119 = v; }
	function double119() external view returns (uint256) { return value119 * 2; }
	mapping(address => uint256) public balances119;
	event Updated119(address indexed who, uint256 v);
}
