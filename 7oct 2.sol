// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string internal x;

    function setX() external {
        x = "Hello World";
    }
}

contract B {
    uint internal pow;

    function setPow() external {
        uint a = 2;
        uint b = 20;
        pow = a ** b;
    }
}

contract C is A, B {
    function getStr() external view returns (string memory) {
        return x;
    }

    function getPow() external view returns (uint) {
        return pow;
    }
}

contract Caller {
    C contractC = new C();

    function testInheritance() public returns (string memory, uint) {
        contractC.setX();
        contractC.setPow();

        return (contractC.getStr(), contractC.getPow());
    }
}