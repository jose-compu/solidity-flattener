// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf199 {
	uint256 public value199;
	function set199(uint256 v) external { value199 = v; }
	function double199() external view returns (uint256) { return value199 * 2; }
	mapping(address => uint256) public balances199;
	event Updated199(address indexed who, uint256 v);
}
