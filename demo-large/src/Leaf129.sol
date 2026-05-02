// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf129 {
	uint256 public value129;
	function set129(uint256 v) external { value129 = v; }
	function double129() external view returns (uint256) { return value129 * 2; }
	mapping(address => uint256) public balances129;
	event Updated129(address indexed who, uint256 v);
}
