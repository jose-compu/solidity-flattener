// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf84 {
	uint256 public value84;
	function set84(uint256 v) external { value84 = v; }
	function double84() external view returns (uint256) { return value84 * 2; }
	mapping(address => uint256) public balances84;
	event Updated84(address indexed who, uint256 v);
}
