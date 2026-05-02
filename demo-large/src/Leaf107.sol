// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf107 {
	uint256 public value107;
	function set107(uint256 v) external { value107 = v; }
	function double107() external view returns (uint256) { return value107 * 2; }
	mapping(address => uint256) public balances107;
	event Updated107(address indexed who, uint256 v);
}
