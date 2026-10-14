// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) public balances;

    function deposit() public payable {
        require(msg.value > 0, "Send some ETH");
        balances[msg.sender] += msg.value;
    }

    function getMyBalance() public view returns (uint256) {
        return balances[msg.sender];
    }

    function getBalance(address user) public view returns (uint256) {
        return balances[user];
    }

    function withdraw(uint256 amount) public {
        require(
            balances[msg.sender] >= amount,
            "Insufficient bank balance"
        );

        balances[msg.sender] -= amount;

        (bool success, ) = payable(msg.sender).call{value: amount}("");
        require(success, "ETH transfer failed");
    }

    function transferToBank(address from, address to, uint256 amount) public {
        require(balances[from] >= amount, "Insufficient bank balance");
        require(to != address(0), "Invalid recipient");

        balances[from] -= amount;
        balances[to] += amount;
    }

    function transferToWallet(address recipient, uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient bank balance");
        require(recipient != address(0), "Invalid recipient");

        balances[msg.sender] -= amount;

        (bool success, ) = payable(recipient).call{value: amount}("");
        require(success, "ETH transfer failed");
    }

    function getBankBalance() public view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {
        balances[msg.sender] += msg.value;
    }
}