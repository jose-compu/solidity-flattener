// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf47 {
	uint256 public value47;
	function set47(uint256 v) external { value47 = v; }
	function double47() external view returns (uint256) { return value47 * 2; }
	mapping(address => uint256) public balances47;
	event Updated47(address indexed who, uint256 v);
}
