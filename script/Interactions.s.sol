// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function run() external returns (BasicNft) {
        address mostRecentlyDeployed = DevOpsTools.mostRecentlyDeployed(
            "BasicNft",
            block.chainid
        );
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}
