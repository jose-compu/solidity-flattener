// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf168 {
	uint256 public value168;
	function set168(uint256 v) external { value168 = v; }
	function double168() external view returns (uint256) { return value168 * 2; }
	mapping(address => uint256) public balances168;
	event Updated168(address indexed who, uint256 v);
}
