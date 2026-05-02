// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf94 {
	uint256 public value94;
	function set94(uint256 v) external { value94 = v; }
	function double94() external view returns (uint256) { return value94 * 2; }
	mapping(address => uint256) public balances94;
	event Updated94(address indexed who, uint256 v);
}
