// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf49 {
	uint256 public value49;
	function set49(uint256 v) external { value49 = v; }
	function double49() external view returns (uint256) { return value49 * 2; }
	mapping(address => uint256) public balances49;
	event Updated49(address indexed who, uint256 v);
}
