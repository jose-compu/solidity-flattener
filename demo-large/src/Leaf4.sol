// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf4 {
	uint256 public value4;
	function set4(uint256 v) external { value4 = v; }
	function double4() external view returns (uint256) { return value4 * 2; }
	mapping(address => uint256) public balances4;
	event Updated4(address indexed who, uint256 v);
}
