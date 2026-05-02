// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf148 {
	uint256 public value148;
	function set148(uint256 v) external { value148 = v; }
	function double148() external view returns (uint256) { return value148 * 2; }
	mapping(address => uint256) public balances148;
	event Updated148(address indexed who, uint256 v);
}
