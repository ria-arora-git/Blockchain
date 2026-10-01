// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
contract parent{
    uint internal sum;
    function setvalue() external {
        uint a=10;
        uint b=20;
        sum=a+b;
    }
}
contract child is parent{
    function getvalue()external view returns(uint){
     return sum;
    }
}
contract caller{
    child cc=new child();
    function testinheritance() public returns(uint){
        cc.setvalue();
        return cc.getvalue();
    }
}