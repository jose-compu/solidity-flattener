// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf190 {
	uint256 public value190;
	function set190(uint256 v) external { value190 = v; }
	function double190() external view returns (uint256) { return value190 * 2; }
	mapping(address => uint256) public balances190;
	event Updated190(address indexed who, uint256 v);
}
