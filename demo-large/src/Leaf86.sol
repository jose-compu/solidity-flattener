// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf86 {
	uint256 public value86;
	function set86(uint256 v) external { value86 = v; }
	function double86() external view returns (uint256) { return value86 * 2; }
	mapping(address => uint256) public balances86;
	event Updated86(address indexed who, uint256 v);
}
