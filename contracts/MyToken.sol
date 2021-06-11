// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
   
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("My First Token", "NFT") {
        _mint(msg.sender, initialSupply);
    }
}