// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract test {
    struct Book {
        string title;
        string author;
        uint id;
        bool available;
    }

    Book[] books;

    function set_book_details( string memory _title, string memory _author, uint _id, bool _available) public {
        books.push(Book(_title, _author, _id, _available));
    }

    function book_info(uint _id) public view returns (string memory, string memory, uint, bool) {
        for (uint i = 0; i < books.length; i++) {
            if (books[i].id == _id) {
                return (
                    books[i].title,
                    books[i].author,
                    books[i].id,
                    books[i].available
                );
            }
        }

        return ("Book not found", "", 0, false);
    }
}