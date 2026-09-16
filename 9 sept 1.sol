// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalldataExample {

    function processData(uint[] calldata inputData) external pure returns (uint)
    {
        uint sum = 0;

        for (uint i = 0; i < inputData.length; i++) {
            sum += inputData[i];
        }

        return sum;
    }
}