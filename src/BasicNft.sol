// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNft is ERC721 {
    uint256 private s_tokenCounter;
    constructor() ERC721("Dogie", "DOG") {
        s_tokenCounter = 0;
    }
}
