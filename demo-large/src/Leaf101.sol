// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf101 {
	uint256 public value101;
	function set101(uint256 v) external { value101 = v; }
	function double101() external view returns (uint256) { return value101 * 2; }
	mapping(address => uint256) public balances101;
	event Updated101(address indexed who, uint256 v);
}
