// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string s1;

    constructor(string memory s) {
        s1 = s;
    }

    function Print() public pure returns (string memory) {
        return "Indirect Initialization";
    }
}

contract B is A {
    constructor(string memory info) A(string.concat(info, "Hello")) {}

    function getStr() public view returns (string memory) {
        return s1;
    }
}

contract Caller {
    B ob = new B("Jack");

    function getResult() public view returns (string memory) {
        ob.Print();
        return (ob.getStr());
    }
}