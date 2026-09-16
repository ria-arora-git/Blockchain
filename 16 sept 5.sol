// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract StudentRegistry {
    mapping(uint => string) public students;

    function addOrUpdateStudent(uint _id, string memory _name) public {
        students[_id] = _name;
    }

    function getStudent(uint _id) public view returns (string memory){
        return students[_id];
    }

    function deleteStudent(uint _id) public {
        delete students[_id];
    }
}