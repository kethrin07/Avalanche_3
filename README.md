# Create and Mint Token

This smart contract creates an ERC20 token named `MyToken` (symbol: `MTK`). It allows the contract owner to mint new tokens to specified addresses and any user to burn their tokens. The contract includes standard ERC20 functionality for token transfers. The owner can distribute tokens as rewards or incentives, while users can reduce the total supply by burning their tokens and transfer tokens between addresses for peer-to-peer transactions. The contract can be deployed using HardHat or Remix, and it provides essential functions like `mint`, `burn`, and standard ERC20 transfers for seamless interaction.

## Description

This project involves creating an ERC20 token named `MyToken` (symbol: `MTK`) using Solidity and OpenZeppelin's implementation of the ERC20 standard. The primary purpose of this smart contract is to facilitate the creation, distribution, and management of a custom cryptocurrency token. Upon deployment, an initial supply of tokens is minted to the deployer's address. The contract includes a minting function restricted to the contract owner, allowing them to generate new tokens and distribute them to specified addresses as rewards or incentives. Additionally, it includes a burning function enabling any token holder to destroy a portion of their tokens, thereby reducing the total supply. The contract also supports standard ERC20 functionalities like transferring tokens between addresses, which facilitates peer-to-peer transactions. This token can be deployed and interacted with using development tools like HardHat or Remix. The smart contract ensures secure and controlled token minting and burning processes, providing a robust foundation for various use cases such as rewarding participants, managing in-game currencies, or creating loyalty programs.

## Getting Started

### Executing program

#### How to Run the Program

 **Using Remix IDE**
   - **Open Remix IDE**: Go to [Remix IDE](https://remix.ethereum.org/).
   - **Create File**: Create a new file named `MyToken.sol` and paste your contract code.
   - **Compile**: Select the Solidity compiler version (e.g., 0.8.0) and compile the contract.
   - **Deploy**: Use "Injected Web3" for testnet/mainnet or "JavaScript VM" for local testing, then deploy and confirm the transaction in MetaMask.

## Authors

Kethrin Naharwal 

