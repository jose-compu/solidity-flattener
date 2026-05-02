// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf165 {
	uint256 public value165;
	function set165(uint256 v) external { value165 = v; }
	function double165() external view returns (uint256) { return value165 * 2; }
	mapping(address => uint256) public balances165;
	event Updated165(address indexed who, uint256 v);
}
