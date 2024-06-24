## My Token
The MyToken project is a simple Solidity-based smart contract designed to create and manage a custom cryptocurrency token. The contract provides essential functionalities such as minting new tokens and burning existing ones. It keeps track of the total supply of tokens and the balances of individual addresses.
## Description
This Solidity code defines a basic token named "Animal" with the symbol "AN". It tracks the total supply and balances using mappings. The "mint" function allows creating new tokens for an address, while the "burn" function lets users destroy their own tokens. This contract provides a starting point for a token, but lacks features like transfers and robust security measures for real-world applications.
## Getting Started
### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Create token.sol). Copy and paste the following code into the file:
```
c// SPDX-License-Identifier: MIT
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
```
## Help
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Create token.sol" button.
Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MY TOKEN" contract from the dropdown menu, and then click on the "Deploy" button.
Once the deployment is successful, Remix will display the deployed contract address.
You can interact with the "mint" and "burn" functions by clicking on them and providing the required parameters (address and amount).
## Authors
Anirudh
@ anirudhgahlawat80@gmail.com
## License
This project is licensed under the MIT License - see the LICENSE.md file for details
