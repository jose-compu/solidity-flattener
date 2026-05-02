// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf29 {
	uint256 public value29;
	function set29(uint256 v) external { value29 = v; }
	function double29() external view returns (uint256) { return value29 * 2; }
	mapping(address => uint256) public balances29;
	event Updated29(address indexed who, uint256 v);
}
