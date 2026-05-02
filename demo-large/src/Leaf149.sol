// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf149 {
	uint256 public value149;
	function set149(uint256 v) external { value149 = v; }
	function double149() external view returns (uint256) { return value149 * 2; }
	mapping(address => uint256) public balances149;
	event Updated149(address indexed who, uint256 v);
}
