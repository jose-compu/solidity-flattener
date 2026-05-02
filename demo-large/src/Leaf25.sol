// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf25 {
	uint256 public value25;
	function set25(uint256 v) external { value25 = v; }
	function double25() external view returns (uint256) { return value25 * 2; }
	mapping(address => uint256) public balances25;
	event Updated25(address indexed who, uint256 v);
}
