// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf15 {
	uint256 public value15;
	function set15(uint256 v) external { value15 = v; }
	function double15() external view returns (uint256) { return value15 * 2; }
	mapping(address => uint256) public balances15;
	event Updated15(address indexed who, uint256 v);
}
