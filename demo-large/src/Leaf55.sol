// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf55 {
	uint256 public value55;
	function set55(uint256 v) external { value55 = v; }
	function double55() external view returns (uint256) { return value55 * 2; }
	mapping(address => uint256) public balances55;
	event Updated55(address indexed who, uint256 v);
}
