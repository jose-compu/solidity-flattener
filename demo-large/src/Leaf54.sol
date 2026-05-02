// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf54 {
	uint256 public value54;
	function set54(uint256 v) external { value54 = v; }
	function double54() external view returns (uint256) { return value54 * 2; }
	mapping(address => uint256) public balances54;
	event Updated54(address indexed who, uint256 v);
}
