// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf181 {
	uint256 public value181;
	function set181(uint256 v) external { value181 = v; }
	function double181() external view returns (uint256) { return value181 * 2; }
	mapping(address => uint256) public balances181;
	event Updated181(address indexed who, uint256 v);
}
