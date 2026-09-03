// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Types {
    bool public boolean = false;
    int32 public int_var = -60313;
    string public str = "Good morning";
    bytes1 public b = "a";

    enum fruits { apple, banana, mango }

    function myEnum() public pure returns (fruits) {
        return fruits.banana;
    }
}