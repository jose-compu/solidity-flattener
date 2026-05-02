// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf6 {
	uint256 public value6;
	function set6(uint256 v) external { value6 = v; }
	function double6() external view returns (uint256) { return value6 * 2; }
	mapping(address => uint256) public balances6;
	event Updated6(address indexed who, uint256 v);
}
