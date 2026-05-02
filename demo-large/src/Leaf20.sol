// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf20 {
	uint256 public value20;
	function set20(uint256 v) external { value20 = v; }
	function double20() external view returns (uint256) { return value20 * 2; }
	mapping(address => uint256) public balances20;
	event Updated20(address indexed who, uint256 v);
}
