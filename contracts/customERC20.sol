// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

import "./ERC20.sol";

contract customERC20 is ERC20 {

    // Cosntructor del smart contract
    constructor() ERC20("Tita", "TT"){}

    // Creacion de nuevos tokens
    function createTokens() public {
        _mint(msg.sender, 1000);
    }
}