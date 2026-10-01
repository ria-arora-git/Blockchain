// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    string internal x;
    string a = "Hello";
    string b = "World";

    function getA() external {
        x = string.concat(a, b);
    }
}

contract B is A {
    string public y;
    string c = "Good";

    function getB() external {
        y = string.concat(x, c);
    }
}

contract C is B {
    function getC() external view returns (string memory) {
        return y;
    }
}

contract caller {
    C cc = new C();

    function testInheritance() public returns (string memory) {
        cc.getA();
        cc.getB();
        return cc.getC();
    }
}