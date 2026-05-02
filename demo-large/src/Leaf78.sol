// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf78 {
	uint256 public value78;
	function set78(uint256 v) external { value78 = v; }
	function double78() external view returns (uint256) { return value78 * 2; }
	mapping(address => uint256) public balances78;
	event Updated78(address indexed who, uint256 v);
}
