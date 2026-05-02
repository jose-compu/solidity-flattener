// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf70 {
	uint256 public value70;
	function set70(uint256 v) external { value70 = v; }
	function double70() external view returns (uint256) { return value70 * 2; }
	mapping(address => uint256) public balances70;
	event Updated70(address indexed who, uint256 v);
}
