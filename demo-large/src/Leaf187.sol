// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf187 {
	uint256 public value187;
	function set187(uint256 v) external { value187 = v; }
	function double187() external view returns (uint256) { return value187 * 2; }
	mapping(address => uint256) public balances187;
	event Updated187(address indexed who, uint256 v);
}
