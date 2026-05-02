// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf157 {
	uint256 public value157;
	function set157(uint256 v) external { value157 = v; }
	function double157() external view returns (uint256) { return value157 * 2; }
	mapping(address => uint256) public balances157;
	event Updated157(address indexed who, uint256 v);
}
