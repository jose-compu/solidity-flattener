// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf74 {
	uint256 public value74;
	function set74(uint256 v) external { value74 = v; }
	function double74() external view returns (uint256) { return value74 * 2; }
	mapping(address => uint256) public balances74;
	event Updated74(address indexed who, uint256 v);
}
