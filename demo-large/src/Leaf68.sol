// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf68 {
	uint256 public value68;
	function set68(uint256 v) external { value68 = v; }
	function double68() external view returns (uint256) { return value68 * 2; }
	mapping(address => uint256) public balances68;
	event Updated68(address indexed who, uint256 v);
}
