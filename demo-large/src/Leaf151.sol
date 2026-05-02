// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf151 {
	uint256 public value151;
	function set151(uint256 v) external { value151 = v; }
	function double151() external view returns (uint256) { return value151 * 2; }
	mapping(address => uint256) public balances151;
	event Updated151(address indexed who, uint256 v);
}
