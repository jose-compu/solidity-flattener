// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf171 {
	uint256 public value171;
	function set171(uint256 v) external { value171 = v; }
	function double171() external view returns (uint256) { return value171 * 2; }
	mapping(address => uint256) public balances171;
	event Updated171(address indexed who, uint256 v);
}
