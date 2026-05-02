// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf120 {
	uint256 public value120;
	function set120(uint256 v) external { value120 = v; }
	function double120() external view returns (uint256) { return value120 * 2; }
	mapping(address => uint256) public balances120;
	event Updated120(address indexed who, uint256 v);
}
