// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf152 {
	uint256 public value152;
	function set152(uint256 v) external { value152 = v; }
	function double152() external view returns (uint256) { return value152 * 2; }
	mapping(address => uint256) public balances152;
	event Updated152(address indexed who, uint256 v);
}
