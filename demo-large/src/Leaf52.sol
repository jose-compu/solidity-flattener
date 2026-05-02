// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf52 {
	uint256 public value52;
	function set52(uint256 v) external { value52 = v; }
	function double52() external view returns (uint256) { return value52 * 2; }
	mapping(address => uint256) public balances52;
	event Updated52(address indexed who, uint256 v);
}
