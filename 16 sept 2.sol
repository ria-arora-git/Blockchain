// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LearningStrings{
    function getLength1(string memory s) public pure returns (uint256, bytes1){
        bytes memory b = bytes(s);
        return (b.length, b[2]);
    }
}