// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Types {
    uint[] data;
    uint j = 0; 

    function loopwhile() public returns(uint[] memory) {
        while(j < 5) {
            j++;

            if(j == 3) {
                break; 
            }

            data.push(j);
        }

        return data;
    }

    function loopdowhile() public returns(uint[] memory) {
        do {
            j++;

            if(j == 3) {
                break; 
            }

            data.push(j);
        } while(j < 5);

        return data;
    }
}
