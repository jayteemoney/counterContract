// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    uint public count;
    address public owner;

    constructor ()  {
        owner  = msg.sender;
    
    }

    event countChanged(address indexed sender, uint _count, string changed);

    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }


    function increment() external onlyOwner {  // function name is "increment"
        count++; 
        emit countChanged(msg.sender,count,"incremented");
                      // increments the counter value by one (as we are doing in memory)
    }

    function decrement() external onlyOwner {
        count --;
    }
    function getCount() external onlyOwner view returns (uint) {
       return count;   // returning current value of the counter
    }

    function setCount (uint _count) external {
        count = _count;
    }
}