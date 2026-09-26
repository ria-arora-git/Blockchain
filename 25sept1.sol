// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function deposit() public payable {
        require(msg.value > 0, "You need to send some Ether");
    }

    function transferEther(address payable recipient, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can transfer Ether");
        require(
            address(this).balance >= amount,
            "Insufficient balance in contract"
        );

        (bool success, ) = recipient.call{value: amount}("");

        require(success, "Transfer failed");
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}