// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf156 {
	uint256 public value156;
	function set156(uint256 v) external { value156 = v; }
	function double156() external view returns (uint256) { return value156 * 2; }
	mapping(address => uint256) public balances156;
	event Updated156(address indexed who, uint256 v);
}
