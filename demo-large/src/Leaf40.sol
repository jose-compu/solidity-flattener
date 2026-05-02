// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf40 {
	uint256 public value40;
	function set40(uint256 v) external { value40 = v; }
	function double40() external view returns (uint256) { return value40 * 2; }
	mapping(address => uint256) public balances40;
	event Updated40(address indexed who, uint256 v);
}
