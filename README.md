# Create and Mint Token

This smart contract creates an ERC20 token named `MyToken` (symbol: `MTK`). It allows the contract owner to mint new tokens to specified addresses and any user to burn their tokens. The contract includes standard ERC20 functionality for token transfers. The owner can distribute tokens as rewards or incentives, while users can reduce the total supply by burning their tokens and transfer tokens between addresses for peer-to-peer transactions. The contract can be deployed using HardHat or Remix, and it provides essential functions like `mint`, `burn`, and standard ERC20 transfers for seamless interaction.

## Description

This project involves creating an ERC20 token named `MyToken` (symbol: `MTK`) using Solidity and OpenZeppelin's implementation of the ERC20 standard. The primary purpose of this smart contract is to facilitate the creation, distribution, and management of a custom cryptocurrency token. Upon deployment, an initial supply of tokens is minted to the deployer's address. The contract includes a minting function restricted to the contract owner, allowing them to generate new tokens and distribute them to specified addresses as rewards or incentives. Additionally, it includes a burning function enabling any token holder to destroy a portion of their tokens, thereby reducing the total supply. The contract also supports standard ERC20 functionalities like transferring tokens between addresses, which facilitates peer-to-peer transactions. This token can be deployed and interacted with using development tools like HardHat or Remix. The smart contract ensures secure and controlled token minting and burning processes, providing a robust foundation for various use cases such as rewarding participants, managing in-game currencies, or creating loyalty programs.

## Getting Started

### Executing program

#### How to Run the Program

1. **Open Remix IDE**: 
   - Go to [Remix IDE](https://remix.ethereum.org/) in your web browser.

2. **Create File**: 
   - In the left panel, click on the "+" icon to create a new file.
   - Name the file `MyToken.sol`.
   - Paste the following smart contract code into the file:

   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.0;

   import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

   contract MyToken is ERC20 {
       address public owner;

       constructor(uint256 initialSupply) ERC20("MyToken", "MTK") {
           owner = msg.sender;
           _mint(msg.sender, initialSupply);
       }

       function mint(address to, uint256 amount) public onlyOwner {
           _mint(to, amount);
       }

       function burn(uint256 amount) public {
           _burn(msg.sender, amount);
       }

       modifier onlyOwner() {
           require(msg.sender == owner, "Only owner can call this function");
           _;
       }
   }
   ```

3. **Compile the Contract**:
   - Click on the "Solidity Compiler" tab (suitcase icon on the left).
   - Ensure the compiler version is set to `0.8.0` or the version compatible with your contract.
   - Click on "Compile MyToken.sol".
   - Check for any compilation errors and resolve them if necessary.

4. **Deploy the Contract**:
   - Click on the "Deploy & Run Transactions" tab (icon with a play button).
   - Select the environment for deployment:
     - **Injected Web3**: Use this if you want to deploy to a testnet or mainnet using MetaMask.
     - **JavaScript VM**: Use this for local testing within Remix.
   - Ensure your MetaMask is connected and set to the desired network (if using "Injected Web3").
   - Click on "Deploy" next to the `MyToken` contract.
   - Confirm the transaction in MetaMask (if using "Injected Web3").

5. **Interact with the Contract**:
   - After deployment, the contract will appear in the "Deployed Contracts" section.
   - Expand the deployed contract to see available functions:
     - **Mint Tokens**: As the owner, call the `mint` function, specifying the address and amount of tokens to mint.
     - **Burn Tokens**: Any user can call the `burn` function, specifying the amount of tokens to burn.
     - **Transfer Tokens**: Use the standard ERC20 `transfer` function to send tokens to other addresses.

By following these steps, you can successfully compile, deploy, and interact with your ERC20 token contract using Remix IDE.

## Authors

Kethrin Naharwal 

