//SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // solidity versions

contract SimpleStorage {
    // favoriteNumber gets initiallzed to 0 if no value is given 
    uint256 myFavoriteNumber; // 0

    // uint256[] listofFavoriteNumbers;
    struct person {
        uint256 favoriteNumber;
        string name;
    }
    //dynamic array
    person[] public listOfPeople; // []

    // chelsea -> 232
    mapping(string=> uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber; // + 5
    }
    
    function retrieve() public view returns (uint256)  {
        return myFavoriteNumber;
    }

    // calldata,memory,storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        listOfPeople.push( person(_favoriteNumber ,_name) ) ;
    }     

}
