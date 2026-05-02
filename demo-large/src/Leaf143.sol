// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf143 {
	uint256 public value143;
	function set143(uint256 v) external { value143 = v; }
	function double143() external view returns (uint256) { return value143 * 2; }
	mapping(address => uint256) public balances143;
	event Updated143(address indexed who, uint256 v);
}
