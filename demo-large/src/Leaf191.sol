// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf191 {
	uint256 public value191;
	function set191(uint256 v) external { value191 = v; }
	function double191() external view returns (uint256) { return value191 * 2; }
	mapping(address => uint256) public balances191;
	event Updated191(address indexed who, uint256 v);
}
