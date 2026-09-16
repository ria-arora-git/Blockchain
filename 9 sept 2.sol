// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract basecontract {
    uint internal data;

    function setData(uint _data) internal {
        data = _data;
    }
}

contract Derivedcontract is basecontract {

    function updateData(uint _data) public {
        setData(_data);
    }

    function getData() public view returns (uint) {
        return data;
    }
}