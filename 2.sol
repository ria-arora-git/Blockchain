// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Calculator {
    function calculate(uint n) public pure returns (uint) {
        if (n < 10) {
            uint product = 1;

            for (uint i = 1; i <= n; i++) {
                product *= i;
            }

            return product;
        }

        else if (n >= 10 && n <= 20) {
            uint sum = 0;

            for (uint i = 1; i <= n; i++) {
                sum += i;
            }

            return sum;
        }
        
        else {
            return 0;
        }
    }
}