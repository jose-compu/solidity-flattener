// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf176 {
	uint256 public value176;
	function set176(uint256 v) external { value176 = v; }
	function double176() external view returns (uint256) { return value176 * 2; }
	mapping(address => uint256) public balances176;
	event Updated176(address indexed who, uint256 v);
}
