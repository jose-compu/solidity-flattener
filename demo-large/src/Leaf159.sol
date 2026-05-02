// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Leaf159 {
	uint256 public value159;
	function set159(uint256 v) external { value159 = v; }
	function double159() external view returns (uint256) { return value159 * 2; }
	mapping(address => uint256) public balances159;
	event Updated159(address indexed who, uint256 v);
}
