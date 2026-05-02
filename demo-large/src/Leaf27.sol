// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf27 {
	uint256 public value27;
	function set27(uint256 v) external { value27 = v; }
	function double27() external view returns (uint256) { return value27 * 2; }
	mapping(address => uint256) public balances27;
	event Updated27(address indexed who, uint256 v);
}
