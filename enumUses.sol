pragma solidity 0.5.1;

contract MyContract{
    
    enum State {Waiting , Active , Ready}
    State public state;
    
    constructor() public{
        state = State.Waiting;
    }
    
    function Active() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool){
       return state == State.Active;
    }
}