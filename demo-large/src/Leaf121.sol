// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf121 {
	uint256 public value121;
	function set121(uint256 v) external { value121 = v; }
	function double121() external view returns (uint256) { return value121 * 2; }
	mapping(address => uint256) public balances121;
	event Updated121(address indexed who, uint256 v);
}
