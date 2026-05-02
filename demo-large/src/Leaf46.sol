// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf46 {
	uint256 public value46;
	function set46(uint256 v) external { value46 = v; }
	function double46() external view returns (uint256) { return value46 * 2; }
	mapping(address => uint256) public balances46;
	event Updated46(address indexed who, uint256 v);
}
