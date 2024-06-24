// c SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {
    
    // Public variables to store token details
    string public name = "Animal";
    string public symbol = "AN";
    uint public totalSupply=0;
    // Mapping to store balances of addresses
    mapping(address => uint) public balances;
    // Mint function to create new tokens
    function mint(address _to, uint _amount) public {
        totalSupply += _amount;
        balances[_to] += _amount;
    }
    // Burn function to destroy tokens
    function burn(address _from, uint256 _amount) public {
        if(balances[_from] >= _amount)
        totalSupply -= _amount;
        balances[_from] -= _amount;
    }
}