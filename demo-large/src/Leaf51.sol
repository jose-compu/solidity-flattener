// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf51 {
	uint256 public value51;
	function set51(uint256 v) external { value51 = v; }
	function double51() external view returns (uint256) { return value51 * 2; }
	mapping(address => uint256) public balances51;
	event Updated51(address indexed who, uint256 v);
}
