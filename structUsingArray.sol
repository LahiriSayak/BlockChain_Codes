//using array

pragma solidity 0.5.1;

contract MyContract{
    person[] public people;
    //array person array
    
    uint256 public peopleCount;
    
    struct person {
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName , string memory _lastName) public{
        people.push(person(_firstName , _lastName));
        peopleCount = peopleCount + 1;
    }
}