// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf100 {
	uint256 public value100;
	function set100(uint256 v) external { value100 = v; }
	function double100() external view returns (uint256) { return value100 * 2; }
	mapping(address => uint256) public balances100;
	event Updated100(address indexed who, uint256 v);
}
