// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf82 {
	uint256 public value82;
	function set82(uint256 v) external { value82 = v; }
	function double82() external view returns (uint256) { return value82 * 2; }
	mapping(address => uint256) public balances82;
	event Updated82(address indexed who, uint256 v);
}
