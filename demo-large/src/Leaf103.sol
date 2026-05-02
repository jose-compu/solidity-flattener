// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf103 {
	uint256 public value103;
	function set103(uint256 v) external { value103 = v; }
	function double103() external view returns (uint256) { return value103 * 2; }
	mapping(address => uint256) public balances103;
	event Updated103(address indexed who, uint256 v);
}
