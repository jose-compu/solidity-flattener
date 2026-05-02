// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf50 {
	uint256 public value50;
	function set50(uint256 v) external { value50 = v; }
	function double50() external view returns (uint256) { return value50 * 2; }
	mapping(address => uint256) public balances50;
	event Updated50(address indexed who, uint256 v);
}
