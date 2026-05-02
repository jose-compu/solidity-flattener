// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf105 {
	uint256 public value105;
	function set105(uint256 v) external { value105 = v; }
	function double105() external view returns (uint256) { return value105 * 2; }
	mapping(address => uint256) public balances105;
	event Updated105(address indexed who, uint256 v);
}
