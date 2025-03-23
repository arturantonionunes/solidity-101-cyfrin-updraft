// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // stating our version

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person{
        uint favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;
    
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    } 

    function storePeople(uint256 _favoriteNumber, string memory _name) public{
        listOfPeople.push(Person(_favoriteNumber,_name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

