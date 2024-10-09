// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


interface I_Ikorodu {
    function getBasePrice(string memory _item) external  view returns(uint);
    function getIkoroduPrice(string memory _item) external view returns(uint); 
}


contract MainlandStore{
    address ikoroduAddr;

    constructor(address _contractAddr){
        ikoroduAddr = _contractAddr;
    }

    function getBasePrice(string memory _item) public view returns (uint){
        return I_Ikorodu(ikoroduAddr).getBasePrice(_item);
    }
    function getIkoroduPrice(string memory _item) public view returns (uint){
        return I_Ikorodu(ikoroduAddr).getIkoroduPrice(_item);
    }
    function getMainlandPrice(string memory _item) public view returns (uint){
        return I_Ikorodu(ikoroduAddr).getBasePrice(_item) * 15;
    }
}