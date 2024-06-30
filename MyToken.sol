// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import the ERC20 standard library (consider using OpenZeppelin's implementation)
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner; // Contract owner address

    constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
        owner = msg.sender; // Set deployer as owner
        _mint(msg.sender, initialSupply); // Mint initial tokens to deployer
    }

    // Function for owner to mint tokens to a specified address
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function for burning tokens by a user
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Modifier to restrict functions to the contract owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }
}
