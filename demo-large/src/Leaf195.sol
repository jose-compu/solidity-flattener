// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf195 {
	uint256 public value195;
	function set195(uint256 v) external { value195 = v; }
	function double195() external view returns (uint256) { return value195 * 2; }
	mapping(address => uint256) public balances195;
	event Updated195(address indexed who, uint256 v);
}
