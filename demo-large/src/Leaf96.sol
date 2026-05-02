// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf96 {
	uint256 public value96;
	function set96(uint256 v) external { value96 = v; }
	function double96() external view returns (uint256) { return value96 * 2; }
	mapping(address => uint256) public balances96;
	event Updated96(address indexed who, uint256 v);
}
