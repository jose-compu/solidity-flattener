// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf123 {
	uint256 public value123;
	function set123(uint256 v) external { value123 = v; }
	function double123() external view returns (uint256) { return value123 * 2; }
	mapping(address => uint256) public balances123;
	event Updated123(address indexed who, uint256 v);
}
