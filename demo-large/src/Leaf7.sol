// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf7 {
	uint256 public value7;
	function set7(uint256 v) external { value7 = v; }
	function double7() external view returns (uint256) { return value7 * 2; }
	mapping(address => uint256) public balances7;
	event Updated7(address indexed who, uint256 v);
}
