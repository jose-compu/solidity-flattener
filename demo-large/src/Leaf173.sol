// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf173 {
	uint256 public value173;
	function set173(uint256 v) external { value173 = v; }
	function double173() external view returns (uint256) { return value173 * 2; }
	mapping(address => uint256) public balances173;
	event Updated173(address indexed who, uint256 v);
}
