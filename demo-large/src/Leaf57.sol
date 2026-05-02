// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf57 {
	uint256 public value57;
	function set57(uint256 v) external { value57 = v; }
	function double57() external view returns (uint256) { return value57 * 2; }
	mapping(address => uint256) public balances57;
	event Updated57(address indexed who, uint256 v);
}
