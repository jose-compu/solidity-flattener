// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf89 {
	uint256 public value89;
	function set89(uint256 v) external { value89 = v; }
	function double89() external view returns (uint256) { return value89 * 2; }
	mapping(address => uint256) public balances89;
	event Updated89(address indexed who, uint256 v);
}
