// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract functions {

    // Funciones de tipo Pure (nunca acceden a la blockchain)
    function getName() public pure returns (string memory)  {
        return "Juan";
    }

    // Funciones de tipo View (accede a la blockchain
    uint256 x = 100;
    function getNumber() public view returns (uint256)   {
        return x*2;
    }

    // Funciones de tipo Payable (permiten enviar y recibir pagos)
    // Ver contrato 5_payable.sol
}