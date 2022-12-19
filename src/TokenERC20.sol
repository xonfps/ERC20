// SPDX-License-Identifier: MIT License
pragma solidity ^0.8.5;

contract TokenERC20 {

string public name = "Coelho";

string public symbol = "CLH";

uint8 public decimals = 18;

uint public totalSupply;

mapping(address => uint) public balanceOf;
constructor() {
    totalSupply = 1000 *(10 ** decimals);
    balanceOf[msg.sender] = totalSupply;
}

function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balanceOf[msg.sender] >= _value, "Insufficient Balance");
    _transfer(msg.sender, _to, _value);
    return true;
}

function _transfer(address _from, address _to, uint _value) private {
    balanceOf[_from] = balanceOf[_from] - _value;
    balanceOf[_to] = balanceOf[_to] + _value;
}
}
}
