// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

// Importar un Smart Contract desde openzeppelin
import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

// Declaración del Smart Contract
contract FirstContract is ERC721 {

    // Dirección de la persona que despliega el contrato
    address public owner;

    /* Almacenamos en la variable "owner" la dirección de la persona
    que despliega el contrato */

    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }
}