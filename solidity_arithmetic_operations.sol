// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SolidityTest {
    uint16 public a = 20;
    uint16 public b = 10;
    uint public sum = a + b;
    uint public dif = a - b;
    uint public mul = a * b;
    uint public div = a / b;
    uint public mod = a % b;
    uint public dec = --b;
    uint public inc = ++a;
}