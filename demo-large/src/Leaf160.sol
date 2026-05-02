// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf160 {
	uint256 public value160;
	function set160(uint256 v) external { value160 = v; }
	function double160() external view returns (uint256) { return value160 * 2; }
	mapping(address => uint256) public balances160;
	event Updated160(address indexed who, uint256 v);
}
