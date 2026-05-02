// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf76 {
	uint256 public value76;
	function set76(uint256 v) external { value76 = v; }
	function double76() external view returns (uint256) { return value76 * 2; }
	mapping(address => uint256) public balances76;
	event Updated76(address indexed who, uint256 v);
}
