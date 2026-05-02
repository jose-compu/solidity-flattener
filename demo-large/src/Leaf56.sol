// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf56 {
	uint256 public value56;
	function set56(uint256 v) external { value56 = v; }
	function double56() external view returns (uint256) { return value56 * 2; }
	mapping(address => uint256) public balances56;
	event Updated56(address indexed who, uint256 v);
}
