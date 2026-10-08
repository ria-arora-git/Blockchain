// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string internal x;
    uint internal sum;

    function setX() external {
        x = "HelloWorld";
    }

    function setSum() external {
        uint a = 10;
        uint b = 20;
        sum = a + b;
    }
}

contract B is A {
    function getX() external view returns (string memory) {
        return x;
    }
}

contract C is A {
    function getSum() external view returns (uint) {
        return sum;
    }
}

contract caller {
    B contractB = new B();
    C contractC = new C();

    function testInheritance() public returns (string memory, uint) {
        contractB.setX();
        contractC.setSum();
        return (contractB.getX(), contractC.getSum());
    }
}