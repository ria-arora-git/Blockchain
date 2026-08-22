// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Solidity_var_Test {
    uint8 public state_var;
    constructor(){
        state_var = 16;
    }

    function getResult() public view returns(uint) {
        uint local_var1 = 5;
        uint result = local_var1 + state_var;
        return result;
    }
}
