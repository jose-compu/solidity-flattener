// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf33 {
	uint256 public value33;
	function set33(uint256 v) external { value33 = v; }
	function double33() external view returns (uint256) { return value33 * 2; }
	mapping(address => uint256) public balances33;
	event Updated33(address indexed who, uint256 v);
}
