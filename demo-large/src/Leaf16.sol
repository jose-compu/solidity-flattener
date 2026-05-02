// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf16 {
	uint256 public value16;
	function set16(uint256 v) external { value16 = v; }
	function double16() external view returns (uint256) { return value16 * 2; }
	mapping(address => uint256) public balances16;
	event Updated16(address indexed who, uint256 v);
}
