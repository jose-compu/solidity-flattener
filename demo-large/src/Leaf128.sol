// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf128 {
	uint256 public value128;
	function set128(uint256 v) external { value128 = v; }
	function double128() external view returns (uint256) { return value128 * 2; }
	mapping(address => uint256) public balances128;
	event Updated128(address indexed who, uint256 v);
}
