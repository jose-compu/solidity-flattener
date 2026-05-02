// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf114 {
	uint256 public value114;
	function set114(uint256 v) external { value114 = v; }
	function double114() external view returns (uint256) { return value114 * 2; }
	mapping(address => uint256) public balances114;
	event Updated114(address indexed who, uint256 v);
}
