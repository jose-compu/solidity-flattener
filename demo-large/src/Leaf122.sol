// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf122 {
	uint256 public value122;
	function set122(uint256 v) external { value122 = v; }
	function double122() external view returns (uint256) { return value122 * 2; }
	mapping(address => uint256) public balances122;
	event Updated122(address indexed who, uint256 v);
}
