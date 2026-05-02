// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf44 {
	uint256 public value44;
	function set44(uint256 v) external { value44 = v; }
	function double44() external view returns (uint256) { return value44 * 2; }
	mapping(address => uint256) public balances44;
	event Updated44(address indexed who, uint256 v);
}
