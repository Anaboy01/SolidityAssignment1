// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IMainland {

    function getBasePrice(string memory _item) external view returns (uint);
    function getIkoroduPrice(string memory _item) external  view returns (uint);
    function getMainlandPrice(string memory _item) external view returns (uint);
    
}

contract VIStore{
    address mainlandAddr;

    constructor(address _contractAddr){
        mainlandAddr = _contractAddr;
    }

    function getBasePrice(string memory _item) public view returns (uint){
        return IMainland(mainlandAddr).getBasePrice(_item);
    }
    function getIkoroduPrice(string memory _item) public view returns (uint){
        return IMainland(mainlandAddr).getIkoroduPrice(_item);
    }
    function getMainlandPrice(string memory _item) public view returns (uint){
        return IMainland(mainlandAddr).getMainlandPrice(_item);
    }
    function getVIPrice(string memory _item) public view returns (uint){
        return IMainland(mainlandAddr).getBasePrice(_item) * 25;
    }
}