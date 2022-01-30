// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ERC721 {
    mapping(uint256 => address) private _tokenOwner;

    mapping(address => uint) private _OwnedTokensCount;
}