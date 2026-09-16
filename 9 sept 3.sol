// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract Arrays {
    uint[6] arr1;

    function array_example()
        public
        returns (int[5] memory, uint[6] memory)
    {
        int[5] memory arr = [int(50),63,-77,90,100];

        arr1 = [80,69,37,19,25,30];

        return (arr, arr1);
    }
}