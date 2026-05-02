// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf85 {
	uint256 public value85;
	function set85(uint256 v) external { value85 = v; }
	function double85() external view returns (uint256) { return value85 * 2; }
	mapping(address => uint256) public balances85;
	event Updated85(address indexed who, uint256 v);
}
