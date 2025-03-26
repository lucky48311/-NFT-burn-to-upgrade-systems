# SimpleNFT Module

## Overview
The `SimpleNFT` module is a basic implementation of an NFT (Non-Fungible Token) framework using the Aptos blockchain. This module defines structures and events for minting and upgrading NFTs, allowing creators to manage their digital assets efficiently.

## Features
- **Minting Events**: Tracks when new NFTs are created.
- **Upgrade Events**: Tracks modifications to existing NFTs.

## Module Structure
### Imports
The module imports necessary Aptos framework libraries:
- `std::signer`: Handles digital signatures.
- `std::string`: Provides string operations.
- `aptos_framework::event`: Handles blockchain event logging.

### Data Structures
#### `NFTEvents`
A structure that holds event handles for minting and upgrading NFTs:
```move
struct NFTEvents has key {
    mint_events: event::EventHandle<MintEvent>,
    upgrade_events: event::EventHandle<UpgradeEvent>
}
```

#### `MintEvent`
Defines an event that is emitted when an NFT is minted:
```move
struct MintEvent has drop, store {
    creator: address,
    token_name: string::String
}
```
- `creator`: Address of the NFT creator.
- `token_name`: Name of the minted NFT.

#### `UpgradeEvent`
Defines an event that is emitted when an NFT is upgraded:
```move
struct UpgradeEvent has drop, store {
    owner: address,
    old_token_name: string::String,
    new_token_name: string::String
}
```
- `owner`: Address of the NFT owner.
- `old_token_name`: Previous name of the NFT.
- `new_token_name`: Updated name of the NFT.

## Usage
1. **Minting NFTs**: Emit `MintEvent` when a new NFT is created.
2. **Upgrading NFTs**: Emit `UpgradeEvent` when modifying an NFT.

## Future Enhancements
- Add functions for minting and upgrading NFTs.
- Implement access control and permissions.
- Extend metadata for richer NFT attributes.

## License
This project is open-source and available under the MIT License.


## **contract address **
0x11c373c92756d2dec0c49b92d1c6ccf526f2fd0b377978aa5c3d2bb3f6040d8d

![Screenshot 2025-03-26 114750](https://github.com/user-attachments/assets/39200cd2-5cb1-4e58-8cb2-1a690dacf468)

