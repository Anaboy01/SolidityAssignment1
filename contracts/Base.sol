// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BaseStore {
    uint256 public mangoPrice = 150;
    uint256 public orangePrice = 50;
    uint256 public applePrice = 300;

    function getPrice(string memory _item) public view returns(uint256){
         if (keccak256(abi.encodePacked(_item)) == keccak256(abi.encodePacked("Mango"))) {
            return mangoPrice;
        } else if (keccak256(abi.encodePacked(_item)) == keccak256(abi.encodePacked("Orange"))) {
            return orangePrice;
        } else if (keccak256(abi.encodePacked(_item)) == keccak256(abi.encodePacked("Apple"))) {
            return applePrice;
        }
        return 0; 
    }
}