// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf154 {
	uint256 public value154;
	function set154(uint256 v) external { value154 = v; }
	function double154() external view returns (uint256) { return value154 * 2; }
	mapping(address => uint256) public balances154;
	event Updated154(address indexed who, uint256 v);
}
