//SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract BlockchainMessenger{
    uint public count_change;
    address public owner;
    string public MyMessage;

    constructor( ){
        owner=msg.sender;
    }

    function change_message(string memory _MyMessage) public {
          if (msg.sender==owner) {
              MyMessage=_MyMessage;
              count_change++;
          }
             
    }
}