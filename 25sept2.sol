// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariablesDemo {
    
    receive() external payable {} 

    function transactionInfo() public payable returns (address, uint256, uint256) {
        address sender = msg.sender;
        uint256 amountSent = msg.value;
        uint256 gasLeft = gasleft();

        return (sender, amountSent, gasLeft);
    }

    function blockInfo() public view returns (uint256, uint256, bytes32) {
        uint256 blockNumber = block.number;
        uint256 timestamp = block.timestamp;
        bytes32 blockHash = blockhash(block.number - 1);

        return (blockNumber, timestamp, blockHash);
    }

    function contractInfo() public view returns (address, uint256) {
        address contractAddress = address(this);
        uint256 contractBalance = address(this).balance;

        return (contractAddress, contractBalance);
    }

    function transactionOrigin() public view returns (address) {
        return tx.origin; 
    }

    function addressUtilities() public view returns (address, uint256) {
        address currentCaller = msg.sender;
        uint256 callerBalance = msg.sender.balance;

        return (currentCaller, callerBalance);
    }
}
