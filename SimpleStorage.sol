//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract SimpleStorage{
    // basics types: boolean, uint, int, address, bytes

    uint256 myFavoriteNumber; // it is internall by default
    
   // An array uint256[] favNumbersList;

    struct Person{
        uint256 FavoriteNumber;
        string name;
    }
    Person[] public favNumbersList; //[] it is a dynamic array, it dosen't have a size
    // Person public myFriend = Person(2, "hisName"); // or Person({FavoriteNumber: 2, name: "hisName"});

    mapping(string => uint256) public nameToNum;

    function store(uint256 _FavoriteNumber) public virtual  {
        myFavoriteNumber = _FavoriteNumber; 
    }
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;// view disallow updating state, pure disallow updating state and reading from state or storage
    }

    function addPerson(string memory _name, uint256 _FavoriteNumer) public {
        favNumbersList.push(Person(_FavoriteNumer, _name));
        nameToNum[_name] = _FavoriteNumer;
    }

}