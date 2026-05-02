// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf66 {
	uint256 public value66;
	function set66(uint256 v) external { value66 = v; }
	function double66() external view returns (uint256) { return value66 * 2; }
	mapping(address => uint256) public balances66;
	event Updated66(address indexed who, uint256 v);
}
