// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title Fallback contract
 * @author Famus
 * @notice Storing user's deposit into a mapping and displaying whoever is calling the contract balance
 */

contract userBalance {
    mapping(address => uint) public userbal; // mapping storing user's balance

    function deposit() external payable {
        userbal[msg.sender] += msg.value;
    }

    function checkBalance() external view returns (uint) {
        //returning whoever is calling the function balance
        return userbal[msg.sender];
    }

    fallback() external payable {}

    receive() external payable {}
}
