// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf45 {
	uint256 public value45;
	function set45(uint256 v) external { value45 = v; }
	function double45() external view returns (uint256) { return value45 * 2; }
	mapping(address => uint256) public balances45;
	event Updated45(address indexed who, uint256 v);
}
