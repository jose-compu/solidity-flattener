// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf26 {
	uint256 public value26;
	function set26(uint256 v) external { value26 = v; }
	function double26() external view returns (uint256) { return value26 * 2; }
	mapping(address => uint256) public balances26;
	event Updated26(address indexed who, uint256 v);
}
