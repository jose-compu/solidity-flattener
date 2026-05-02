// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf60 {
	uint256 public value60;
	function set60(uint256 v) external { value60 = v; }
	function double60() external view returns (uint256) { return value60 * 2; }
	mapping(address => uint256) public balances60;
	event Updated60(address indexed who, uint256 v);
}
