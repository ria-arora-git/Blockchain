// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract mapping_example {
    struct student {
        string name;
        string subject;
        uint8 marks;
    }

    mapping(address => student) public result;

    address[] public student_result;

    function adding_values(
        address _studentAddress,
        string memory _name,
        string memory _subject,
        uint8 _marks
    ) public {

        result[_studentAddress] = student(
            _name,
            _subject,
            _marks
        );

        student_result.push(_studentAddress);
    }

    function get_student(address _studentAddress) public view returns (string memory, string memory, uint8){
        student memory s = result[_studentAddress];
        return (
            s.name,
            s.subject,
            s.marks
        );
    }

    function get_student_result() public view returns (address[] memory){
        return student_result;
    }

    function count_students() public view returns (uint){
        return student_result.length;
    }
}