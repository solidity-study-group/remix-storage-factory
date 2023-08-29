// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public contracts;

    function createContract() public returns(uint256){
        SimpleStorage simpleStorage = new SimpleStorage();
        contracts.push(simpleStorage);
        return contracts.length;
    }

    function set(uint256 _index, uint256 _number) public {
        contracts[_index].set(_number);
    }

    function get(uint256 _index) public view returns(uint256){
        return contracts[_index].get();
    }
}