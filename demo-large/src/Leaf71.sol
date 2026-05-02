// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf71 {
	uint256 public value71;
	function set71(uint256 v) external { value71 = v; }
	function double71() external view returns (uint256) { return value71 * 2; }
	mapping(address => uint256) public balances71;
	event Updated71(address indexed who, uint256 v);
}
