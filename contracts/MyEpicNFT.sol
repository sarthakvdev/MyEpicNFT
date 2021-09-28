// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// importing some OpenZeppelin contracts
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract MyEpicNFT is ERC721URIStorage {
    // Some counting help from openzeppelin
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("SquareNFT", "SQUARE") {
        console.log("This is my first NFT smart-contract, just wow!");
    }

    // function our user will hit to get their NFT
    function makeAnEpicNFT() public {
        // getting the current tokenId, starting with 0
        uint256 newItemId = _tokenIds.current();

        // Minting the NFT of id newItemId to the user with address msg.sender
        _safeMint(msg.sender, newItemId);

        // set the NFTs data
        _setTokenURI(newItemId, "data:application/json;base64,ewogICJuYW1lIjogIkNhdCBQZXJzb24iLAogICJkZXNjcmlwdGlvbiI6ICJDYXQgUGVyc29uIGlzIHRoZSBzaWxlbnQgZ3VhcmRpYW4uIiwKICAiaW1hZ2UiOiAiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhCeVpYTmxjblpsUVhOd1pXTjBVbUYwYVc4OUluaE5hVzVaVFdsdUlHMWxaWFFpSUhacFpYZENiM2c5SWpBZ01DQXpOVEFnTXpVd0lqNEtJQ0FnSUR4emRIbHNaVDR1WW1GelpTQjdJR1pwYkd3NklIZG9hWFJsT3lCbWIyNTBMV1poYldsc2VUb2dZMjl1YzI5c1lYTTdJR1p2Ym5RdGMybDZaVG9nTVRSd2VEc2dmVHd2YzNSNWJHVStDaUFnSUNBOGNtVmpkQ0IzYVdSMGFEMGlNVEF3SlNJZ2FHVnBaMmgwUFNJeE1EQWxJaUJtYVd4c1BTSmliR0ZqYXlJZ0x6NEtJQ0FnSUR4MFpYaDBJSGc5SWpVd0pTSWdlVDBpTlRBbElpQmpiR0Z6Y3owaVltRnpaU0lnWkc5dGFXNWhiblF0WW1GelpXeHBibVU5SW0xcFpHUnNaU0lnZEdWNGRDMWhibU5vYjNJOUltMXBaR1JzWlNJK1JYQnBZMHRoYTJGemFHbFRaVzV3WVdrOEwzUmxlSFErQ2p3dmMzWm5QZz09Igp9");
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        // Increment the counter for when the next NFT is minted
        _tokenIds.increment();
    }
}