// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    uint data;

    constructor(uint _data) {
        data = _data;
    }

    function Print() public pure returns (string memory) {
        return "Direct Initialization";
    }
}

contract Derived is Base {
    constructor() Base(5) {}

    function getData() external view returns (uint) {
        uint result = data ** 2;
        return result;
    }
}

contract Caller {
    Derived c = new Derived();

    function getResult() public view returns (uint) {
        c.Print();
        return c.getData();
    }
}