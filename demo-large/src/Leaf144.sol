// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf144 {
	uint256 public value144;
	function set144(uint256 v) external { value144 = v; }
	function double144() external view returns (uint256) { return value144 * 2; }
	mapping(address => uint256) public balances144;
	event Updated144(address indexed who, uint256 v);
}
