// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping (address=> uint256) public balances;

    function deposit() public payable  {
        require(msg.value>0,"Must send some Ether");
        balances[msg.sender] = msg.value;
    }

    function withdraw(uint256 amount) public  {
        require(balances[msg.sender] >=amount,"Insufficient balance");
        balances[msg.sender] -= amount;
        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "Transfer Failed");
    }
    
    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}