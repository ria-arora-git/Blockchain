// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract requireStatement {
    function checkInput(uint _input) public pure returns (string memory){
        require(_input >= 0, "Invalid input");
        require(_input <= 255, "Invalid input");

        return "Input is an 8 bit integer";
    }

    function Odd(uint _input) public pure returns (bool){
        require(_input % 2 != 0, "false");
        return true;
    }
}