// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract KycContract is Ownable {
    mapping(address => bool) allowed;

     function setKycCompleted(address _addr) public onlyOwner {
        allowed[_addr] = true;
    }

    function setKycRevoked(address _addr) public onlyOwner {
        allowed[_addr] = true;
    }

    function kycCompleted(address _addr) public view returns(bool) {
        return allowed[_addr];
    } 
    // add it for riason of new deploing 
    // this code is not nececary can be deleted 
    function kycCompletedNew(address _addr) public view returns(bool) {
        return allowed[_addr];
    }

}