// SPDX-License-Identifier: MIT
pragma solidity  0.8.18;
import{SimpleStorage} from "./smple.sol";
contract StorageFactory {

       SimpleStorage[] public listSimpleStorageContracts;

        function CreateStorageContract()public {
  SimpleStorage simpleStorageContractVariable = new SimpleStorage();

        listSimpleStorageContracts.push(simpleStorageContractVariable);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
    
        listSimpleStorageContracts[_simpleStorageIndex].store(
            _simpleStorageNumber
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {

        return listSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}

