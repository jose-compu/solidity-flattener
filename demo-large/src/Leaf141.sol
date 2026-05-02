// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf141 {
	uint256 public value141;
	function set141(uint256 v) external { value141 = v; }
	function double141() external view returns (uint256) { return value141 * 2; }
	mapping(address => uint256) public balances141;
	event Updated141(address indexed who, uint256 v);
}
