// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf3 {
	uint256 public value3;
	function set3(uint256 v) external { value3 = v; }
	function double3() external view returns (uint256) { return value3 * 2; }
	mapping(address => uint256) public balances3;
	event Updated3(address indexed who, uint256 v);
}
