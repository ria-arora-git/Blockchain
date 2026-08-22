// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract VariableScopeExample {
    uint public publicVar = 1;
    uint private privateVar = 2;
    uint internal internalVar = 3;

    function getPrivateVar() public view returns (uint) {
        return privateVar;
    }
}

contract DerivedContract is VariableScopeExample {
    function getInternalVar() public view returns (uint) {
        return internalVar;
    }
}