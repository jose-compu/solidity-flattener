// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf136 {
	uint256 public value136;
	function set136(uint256 v) external { value136 = v; }
	function double136() external view returns (uint256) { return value136 * 2; }
	mapping(address => uint256) public balances136;
	event Updated136(address indexed who, uint256 v);
}
