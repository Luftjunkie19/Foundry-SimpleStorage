// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 i_integer = 125;
    string stringHere = "Hello mate";

    uint256[] listOfNumbers;

    struct Person {
        string name;
        uint256 favouriteNumber;
    }

    Person public myFriend = Person("Henry", 35);

    Person[] public listOfPeople;

    // chelsea -> 232
    mapping(string => uint256) public nameToFavouriteNumber;

    function store(uint256 number) public virtual {
        i_integer = number;
    }

    function retrieve() public view returns (uint256) {
        return i_integer;
    }

    function addPerson(string memory name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(name, _favouriteNumber));
        nameToFavouriteNumber[name] = _favouriteNumber;
    }
}
