pragma solidity 0.5.1;

contract MyContract{
    uint256 public peopleCount = 0;
    mapping(uint => person) public people;
    address owner;
    
    struct person{
        uint _peopleid;
        string _firstName;
        string _lastName;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        //check whether the sender is the owner or not
        _;
    }
    
    constructor() public{
        owner = msg.sender;
    }
    
    function addPerson(string memory _firstName , string memory _lastName) 
        public onlyOwner {
            incrementCount();
            people[peopleCount] = person(peopleCount, _firstName , _lastName);
    }
    
    function incrementCount() internal{
        peopleCount = peopleCount + 1 ;
    }
}