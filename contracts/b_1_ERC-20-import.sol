// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;


// ERC-20: https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token/ERC20
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GLDToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Gold", "GLD") {
        _mint(msg.sender, initialSupply);
    }
}