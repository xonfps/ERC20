// SPDX-License-Identifier: MIT License
pragma solidity ^0.8.5;

contract TokenERC20 {

string public name = "Coelho";

string public symbol = "CLH";

uint8 public decimals = 18;

uint public totalSupply;

constructor() {
    totalSupply = 1000 *(10 ** decimals);
}
}
