// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf130 {
	uint256 public value130;
	function set130(uint256 v) external { value130 = v; }
	function double130() external view returns (uint256) { return value130 * 2; }
	mapping(address => uint256) public balances130;
	event Updated130(address indexed who, uint256 v);
}
