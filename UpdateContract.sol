pragma solidity ^0.5.1;

contract Inbox {
    
    string Message;
    
    constructor(string memory InitialMessage) public {
        Message = InitialMessage;
    }
    
    function setMessage(string memory newMessage) public {
        Message = newMessage;
    }
    
    function getMessage() public view returns(string memory){
        return Message;
    }
}