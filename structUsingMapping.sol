//using mapping

pragma solidity 0.5.1;

contract MyContract{
    uint256 public peopleCount = 0;
    mapping (uint => person) public people;
    
    struct person{
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public{
        peopleCount = peopleCount + 1;
        people[peopleCount] = person(peopleCount, _firstName, _lastName);
    } 
}