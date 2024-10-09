// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


interface IBaseStore {

    function getPrice(string memory _item) external  view returns(uint256);
    
}


contract IkoroduStore{

    address baseStoreAddr;

    constructor (address _contractAddr){
        baseStoreAddr = _contractAddr;
    }

    function getBasePrice(string memory _item) public view returns(uint){
        return IBaseStore(baseStoreAddr).getPrice(_item);
    }

    function getIkoroduPrice(string memory _item) public view returns(uint){
        return IBaseStore(baseStoreAddr).getPrice(_item) * 10;
    }
}