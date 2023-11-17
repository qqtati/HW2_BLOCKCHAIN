// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Storage {
  struct Data {
    uint id;
    string name;
    bool isActive;
    address userAddress;
  }
  mapping(uint => Data) public dataMapping;
  
  event DataAdded(uint _id, string _name, bool _isActive, address _userAddress);

  function addData(uint _id, string memory _name, bool _isActive, address _userAddress) public {
    dataMapping[_id] = Data(_id, _name, _isActive, _userAddress);
    emit DataAdded(_id, _name, _isActive, _userAddress);
  }

  event DataRemoved(uint _id);
  
  function removeData(uint _id) public {
    delete dataMapping[_id];
    emit DataRemoved(_id);
  }

}
