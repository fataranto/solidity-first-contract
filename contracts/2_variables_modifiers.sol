// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract variables_modifiers {

    //valores enteros sin signos (uint)
    uint256 a;
    uint8 public b = 3;

    //valores enteros con signos (int)
    int256 c;
    int8 public d = -32;
    int e = 65;

    //variable string
    string str;
    string private str_private = "Esto es privado";
    string public str_public = "Esto es publico";

    //variablea booleana
    bool boolean;
    bool public boolean_true = true;
    bool private boolean_false = false;

    //variable bytes
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1; //antes se podía usar "byte" o "bytes1" indistintamente, ahora solo bytes1

    //Algoritmo de hash
    bytes32 public hashing = keccak256(abi.encodePacked("Hola", "Fabi"));

    //Variable address
    address my_address;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address2 = msg.sender;

    //Variable de enumeración
    enum options {ON, OFF} //nunca se escribe ";" despues de enum
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }
}