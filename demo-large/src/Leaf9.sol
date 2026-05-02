// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf9 {
	uint256 public value9;
	function set9(uint256 v) external { value9 = v; }
	function double9() external view returns (uint256) { return value9 * 2; }
	mapping(address => uint256) public balances9;
	event Updated9(address indexed who, uint256 v);
}
