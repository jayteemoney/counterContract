// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    uint public count;
    address public owner;

    constructor ()  {
        owner  = msg.sender;
    
    }

    event countChanged(address indexed sender, uint _count, string changed);



    function increment() external {  // function name is "increment"
        count++; 
        emit countChanged(msg.sender,count,"incremented");
                      // increments the counter value by one (as we are doing in memory)
    }

    function decrement() external {
        count --;
    }
    function getCount() external view returns (uint) {
       return count;   // returning current value of the counter
    }

    function setCount (uint _count) external {
        count = _count;
    }
}