// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {BasicNft} from "../src/BasicNft.sol";
import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test {
    DeployBasicNft deployer;
    BasicNft basicNft;

    function setUp() external {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public {
        string memory expectedName = "Dogie";
        string memory actualName = basicNft.name();
        assertEq(expectedName, actualName);
    }
}
