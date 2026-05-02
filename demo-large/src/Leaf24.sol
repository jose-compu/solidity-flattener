// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf24 {
	uint256 public value24;
	function set24(uint256 v) external { value24 = v; }
	function double24() external view returns (uint256) { return value24 * 2; }
	mapping(address => uint256) public balances24;
	event Updated24(address indexed who, uint256 v);
}
