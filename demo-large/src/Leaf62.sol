// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf62 {
	uint256 public value62;
	function set62(uint256 v) external { value62 = v; }
	function double62() external view returns (uint256) { return value62 * 2; }
	mapping(address => uint256) public balances62;
	event Updated62(address indexed who, uint256 v);
}
