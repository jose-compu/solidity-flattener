// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf112 {
	uint256 public value112;
	function set112(uint256 v) external { value112 = v; }
	function double112() external view returns (uint256) { return value112 * 2; }
	mapping(address => uint256) public balances112;
	event Updated112(address indexed who, uint256 v);
}
