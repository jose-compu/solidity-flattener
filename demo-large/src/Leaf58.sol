// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf58 {
	uint256 public value58;
	function set58(uint256 v) external { value58 = v; }
	function double58() external view returns (uint256) { return value58 * 2; }
	mapping(address => uint256) public balances58;
	event Updated58(address indexed who, uint256 v);
}
