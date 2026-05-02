// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf5 {
	uint256 public value5;
	function set5(uint256 v) external { value5 = v; }
	function double5() external view returns (uint256) { return value5 * 2; }
	mapping(address => uint256) public balances5;
	event Updated5(address indexed who, uint256 v);
}
