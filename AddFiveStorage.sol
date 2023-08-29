// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function set(uint256 _favoriteNumber) public pure override {
        _favoriteNumber = _favoriteNumber + 5;
    }
}