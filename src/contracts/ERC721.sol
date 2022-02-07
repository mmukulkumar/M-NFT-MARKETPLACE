// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ERC721 {
    event tranfer(
        address indexed from, 
        address indexed to, 
        uint256 indexed tokenId
        );
    mapping(uint256 => address) private _tokenOwner;  // mapping from the owner token id to the owner

    mapping(address => uint) private _OwnedTokensCount; // mapping from the owner to the number of owner owning tokens

    function _exists(uint256 tokenId) internal view returns(bool){
        address owner = _tokenOwner[tokenId]; // setting the address of NFT owner to check the mapping of the address from tokenowner at tyhe tokenId
        //return the trutheness that address is not zero
    }
    function _mint(address to, uint256 tokenId) internal {     // require that the address is not the  = 0
         require(to != address(0), 'ERC721: minting to the zero address'); // requires that the token does not already exist
         require(!_exists(tokenId), 'ERC721: token already minted');  // adding the new address with the token id for minting

         _tokenOwner[tokenId] = to;  // keep track of each address which is already minted and adding one
         _OwnedTokensCount[to] +=1;

         emit tranfer(address(0), to, tokenId);
    }
}