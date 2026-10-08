// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Employee {
    string public name;
    uint public salary;

    constructor(string memory _name, uint _salary) {
        name = _name;
        salary = _salary;
    }

    function getSalary() public view returns (uint) {
        return salary;
    }

    function calculateBonus() public virtual returns (uint);
}

contract Developer is Employee {
    constructor(string memory _name, uint _salary) Employee(_name, _salary) {}

    function calculateBonus() public pure override returns (uint) {
        return 10000;
    }
}

contract Manager is Employee {
    constructor(string memory _name, uint _salary) Employee(_name, _salary) {}

    function calculateBonus() public pure override returns (uint) {
        return 20000;
    }
}

