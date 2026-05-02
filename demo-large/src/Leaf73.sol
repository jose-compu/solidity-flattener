// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf73 {
	uint256 public value73;
	function set73(uint256 v) external { value73 = v; }
	function double73() external view returns (uint256) { return value73 * 2; }
	mapping(address => uint256) public balances73;
	event Updated73(address indexed who, uint256 v);
}
