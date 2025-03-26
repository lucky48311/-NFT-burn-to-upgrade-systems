module NFTProject::SimpleNFT {
    use std::signer;
    use std::string;
    use aptos_framework::event;

    struct NFTEvents has key {
        mint_events: event::EventHandle<MintEvent>,
        upgrade_events: event::EventHandle<UpgradeEvent>
    }

    struct MintEvent has drop, store {
        creator: address,
        token_name: string::String
    }

    struct UpgradeEvent has drop, store {
        owner: address,
        old_token_name: string::String,
        new_token_name: string::String
    }


}