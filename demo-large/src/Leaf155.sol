// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf155 {
	uint256 public value155;
	function set155(uint256 v) external { value155 = v; }
	function double155() external view returns (uint256) { return value155 * 2; }
	mapping(address => uint256) public balances155;
	event Updated155(address indexed who, uint256 v);
}
