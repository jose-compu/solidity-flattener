// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf111 {
	uint256 public value111;
	function set111(uint256 v) external { value111 = v; }
	function double111() external view returns (uint256) { return value111 * 2; }
	mapping(address => uint256) public balances111;
	event Updated111(address indexed who, uint256 v);
}
