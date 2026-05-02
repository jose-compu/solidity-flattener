// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf142 {
	uint256 public value142;
	function set142(uint256 v) external { value142 = v; }
	function double142() external view returns (uint256) { return value142 * 2; }
	mapping(address => uint256) public balances142;
	event Updated142(address indexed who, uint256 v);
}
