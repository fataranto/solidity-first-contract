// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.4;

contract Food {

    // Estructura de datos
    struct dinnerPlate {
        string name;
        string ingredientes;
    }

    // Menu del dia
    dinnerPlate [] public menu;

    // Creacion del un nuevo menu
    function newMenu(string memory _name, string memory _ingredientes) internal {
        menu.push(dinnerPlate(_name, _ingredientes));
    }
}

contract Hamburguer is Food {

    address public owner;

    constructor () {
        owner = msg.sender;
    }

    // Cocinar una hamburguesa desde el Smart Contract principal
    function doHamburguer(string memory _ingredients, uint _units) external {
        require (_units <=5, "Oops, no puedes pedir tantas hamburguesas");
        newMenu("Hamburger", _ingredients);
    }

    // Modifier: permitir el acceso unicamente all owner y solo all owner
    modifier onlyOwner() {
        require(owner == msg.sender, "No tienes permisos para ejecutar esta funcion");
        _;
    }

    // Restriccion a la ejecucion, solo puede el owner
    function hashPrivateNumber(uint _number) public view onlyOwner returns (bytes32){
        return keccak256(abi.encodePacked(_number));
    }


}