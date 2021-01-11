pragma solidity ^0.4.24;

contract Inbox{
    string Messsage;
    
    constructor(string InitialMessage) public{
        Messsage = InitialMessage;
    }
    
    function setMessage(string NewMessage) public{
        Messsage = NewMessage;
    }
    
    function getMessage() public view returns(string) {
        return Messsage;
    }
}