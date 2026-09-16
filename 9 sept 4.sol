// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract ArraySlice {
    uint[] myArray = [1, 2, 3, 4, 5, 6];
    function getArraySlice(uint size) public returns (uint[] memory)
    {
        myArray.push(7);
       
        uint[] memory mySlice = new uint[](size);

        for (uint i = 0; i < size; i++) {
            mySlice[i] = myArray[i];
        }
        myArray.pop();

        return mySlice;
        
    }
}