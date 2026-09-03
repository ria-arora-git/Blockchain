// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HW {
    string userInput;

    function set(string memory finalValue) public {
        userInput = finalValue;
    }

    function get() public view returns (string memory) {
        return userInput;
    }
}