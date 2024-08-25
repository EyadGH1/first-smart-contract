// SPDX-lICENSE-Identifier: MIT

pragma solidity  ^0.8.8;


contract SimpleStorage{
  uint256  favoriteNumber;
  struct people{
    uint256 fav;
    string name;
  }

people[] public peo;
mapping(string => uint256) public NtoF;
function store (uint256 _favoriteNumber) public  virtual {
    favoriteNumber = _favoriteNumber;

}

function retrive() public view returns(uint256){
return favoriteNumber;
}

function addPerson(string memory _name, uint256 fav) public {
    peo.push(people({ fav : fav , name: _name}));
    NtoF[_name] = fav;
}
}