// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf98 {
	uint256 public value98;
	function set98(uint256 v) external { value98 = v; }
	function double98() external view returns (uint256) { return value98 * 2; }
	mapping(address => uint256) public balances98;
	event Updated98(address indexed who, uint256 v);
}
