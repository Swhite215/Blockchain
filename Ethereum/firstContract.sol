pragma solidity ^0.4.17; //Specifies version of Solidity

contract Inbox { //Definition of contract class
    string public message; //Variable declaration and their types, also generates get method
    
    //Contract Member - Same Name, Constructor, Called Once
    function Inbox(string initialMessage) public {
        message = initialMessage;
    }
    
    //Contract Member
    function setMessage(string newMessage) public {
        message = newMessage;
    }
    
    //getMessage = Name, public view = Type, returns (string) = Return Types
    function getMessage() public view returns (string) {
        return message;
    }

    //Function to test gas
    function doMath(int a, int b) {
        a + b; // 3 Gas
        b - a; // 3 Gas
        a * b; // 5 Gas
        a === 0; // 3 Gas
    }
}

