// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {BasicNft} from "../src/BasicNft.sol";
import {Script} from "forge-std/src/Script.sol";

contract DeployBasicNft is Script {
    function run() public {
        vm.startBroadcast();
        BasicNft basicNft = new BasicNft();
        vm.stopBroadcast();
    }
}
