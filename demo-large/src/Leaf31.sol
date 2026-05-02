// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf31 {
	uint256 public value31;
	function set31(uint256 v) external { value31 = v; }
	function double31() external view returns (uint256) { return value31 * 2; }
	mapping(address => uint256) public balances31;
	event Updated31(address indexed who, uint256 v);
}
