// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf124 {
	uint256 public value124;
	function set124(uint256 v) external { value124 = v; }
	function double124() external view returns (uint256) { return value124 * 2; }
	mapping(address => uint256) public balances124;
	event Updated124(address indexed who, uint256 v);
}
