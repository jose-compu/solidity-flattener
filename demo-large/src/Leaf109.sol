// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf109 {
	uint256 public value109;
	function set109(uint256 v) external { value109 = v; }
	function double109() external view returns (uint256) { return value109 * 2; }
	mapping(address => uint256) public balances109;
	event Updated109(address indexed who, uint256 v);
}
