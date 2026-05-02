// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf127 {
	uint256 public value127;
	function set127(uint256 v) external { value127 = v; }
	function double127() external view returns (uint256) { return value127 * 2; }
	mapping(address => uint256) public balances127;
	event Updated127(address indexed who, uint256 v);
}
