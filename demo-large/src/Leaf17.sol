// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf17 {
	uint256 public value17;
	function set17(uint256 v) external { value17 = v; }
	function double17() external view returns (uint256) { return value17 * 2; }
	mapping(address => uint256) public balances17;
	event Updated17(address indexed who, uint256 v);
}
