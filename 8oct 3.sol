// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBank {
    function deposit() external payable;
    function getBalance(address user) external view returns (uint);
}

contract Bank is IBank {
    mapping(address => uint) private balances;

    function deposit() external payable override {
        balances[tx.origin] += msg.value;
    }

    function getBalance(address user) external view override returns (uint) {
        return balances[user];
    }
}

contract BankUser {
    function depositToBank(address bankAddress) external payable {
        IBank(bankAddress).deposit{value: msg.value}();
    }

    function checkBalance(address bankAddress) external view returns (uint) {
        return IBank(bankAddress).getBalance(msg.sender);
    }
}