// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf14 {
	uint256 public value14;
	function set14(uint256 v) external { value14 = v; }
	function double14() external view returns (uint256) { return value14 * 2; }
	mapping(address => uint256) public balances14;
	event Updated14(address indexed who, uint256 v);
}
