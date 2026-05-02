// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf110 {
	uint256 public value110;
	function set110(uint256 v) external { value110 = v; }
	function double110() external view returns (uint256) { return value110 * 2; }
	mapping(address => uint256) public balances110;
	event Updated110(address indexed who, uint256 v);
}
