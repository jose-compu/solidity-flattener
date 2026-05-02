// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf178 {
	uint256 public value178;
	function set178(uint256 v) external { value178 = v; }
	function double178() external view returns (uint256) { return value178 * 2; }
	mapping(address => uint256) public balances178;
	event Updated178(address indexed who, uint256 v);
}
