//using internal modifier

pragma solidity 0.5.1;

contract MyContract{
    uint256 public peopleCount = 0;
    
    mapping(uint => person) public people;
    
    struct person {
        uint _peopleid;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName , string memory _lastName) public{
        incrementCount();
        people[peopleCount] = person(peopleCount , _firstName, _lastName);
    }
    
    function incrementCount() internal{
        peopleCount = peopleCount + 1;
    }
}