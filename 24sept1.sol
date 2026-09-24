// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contract1 {

    address public owner;

    constructor() {
        owner = msg.sender; 
    }

    function onlyOwner() public view {
        require(msg.sender == owner, "Not the contract owner");
    }

    function deposit() public payable {
        require(msg.value > 0, "Must send some Ether");
    }

    function getMsgData() public pure returns (bytes memory) {
        return msg.data;    
    }

    function getFunctionSignature() public pure returns (bytes4) {
    return msg.sig;
    }
}