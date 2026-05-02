// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf133 {
	uint256 public value133;
	function set133(uint256 v) external { value133 = v; }
	function double133() external view returns (uint256) { return value133 * 2; }
	mapping(address => uint256) public balances133;
	event Updated133(address indexed who, uint256 v);
}
