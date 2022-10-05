

  // SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@aave/core-v3/contracts/flashloan/base/FlashLoanSimpleReceiverBase.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract hundredSolidityQns {
  
  

  constructor()
    
  {
    version="1.1.0";
     address addr1= 0;
    qn60_Users[addr1] = true;
  }
  //qn:60
   mapping(uint => bool) qn60_Users;
  function getUsers(address addr) external returns (bool)
  {
    return qn60_Users[addr];
  }
//address 
//address payable - solidity can send Eth only to address payable and this is only for ETH and not for other tokens

//qn:69 Give 3 ways to save gas
// - put less data on-chain
// - use events instead of storage
// - optimal order for variable declaration

//qn:70 How would optimaly order uint28, bytes32, uint128, : ans uint128,uint128,bytes32
//qn:71 How to concatenate 2 strings a, b? ans: string(abi.encodePacked(a,b));
//qn:72 How to get the langth of a string in solidity?
// bytes memory byteStr = bytes(a); // a is a string
// bytesStr.length;


}
//This is the inner contract
contract A {
    
    constructor(uint a) { }
    function foo() view external returns(uint) { 
        
    }
    function bar() view external returns(address){
        //qn:76:
        //What will the value of 'msg,sender' here/
    }
        
}
//This is the outer contract
contract B{
    function createA(uint a) external {
        //qn:73
        A Ainstance = new A(a); // pass constructor argument(s)

    }
    function callFoo(address addrA) external{
        uint result = A(addrA).foo();
    }
    function callFromDiff(){
        //qn: 75. How to get the address of a smart contract that was deployed from a smart contract
        address childAddress = address(new Child())
    }
    function foo() external {
        //qn:76:
        A Ainstance = new A(a); 
        Ainstance.bar();
    }
}
contract ERC20Interface {
    function totalSupply() public view returns(uint);
    function balanceOf(address tokenOwner,address spender) public view returns(uint);
    function allowance(address tokenOwner,address spender) public view returns(uint);
    function transfer(address tokenOwner,address spender) public view returns(uint);
    function approve(address tokenOwner,address spender) public view returns(uint);
    function transferFrom(address tokenOwner,address spender) public view returns(uint);

    event Transfer(address indexed from, address indexed to, )
    event Approval(address indexed tokenOwner, address indexed from,)
    //qn:79: what is indexed word in above event declaration?
    //qn:80 how many fields can be indexed
    //qn:81: Is it possible for a smart contract to read the events emmitted before? ans: no, only external entities can call
    //qn:82: Is it possible to delete or modify a past event? ans: no, events are immutable.
    //qn:83: In solidity, how to do like a Javascript console.log for debugging? use events
    


}
contract DecentralizedExchange{
    function transferToken(address ERC20Address, address to, uint){
        ERC20Interface(ERC20Address).transfer(to,amount);
    }
}

contract A {
    address admin;
    constructor() { admin = msg.sender; }
    
    function protectedFunction() external returns(address){
        //qn:84: How would you implement access control without modifier?
        require(msg.sender == admin, 'only admin');
    }

     function protectedFunction() external returns onlyAdmin(address){
        //qn:85: How would you implement access control with modifier?
        
    }
    modifier onlyAdmin(){
        require(msg.sender == admin, 'only admin');
        _;
    }
    //qn:86: How to cancel a transaction1?
    //send another tx2 with same nonce, higher gasPrice (minner will pick this second tx2, as they will interested in higher gasPrice tx)
    //Difficult
    //87: What is the ABIEncoverVe pragma statement?
    //////enables experimental Solidity features
    //88: Is it safe to use the ABIEncoderV2 pragma statement in production?
    ////// No, should only be used in development.
    //89: Is it possible to send a transaction without requiring users to pay gas?
    ////// Yes
    //90: Which solidity function would you use to verify a signature?
    ////// ecrecover function
    //91: What is a library in Solidity?
    //////re-usable piece of code, 2 types
    //////deploy: deployed has  its own address and can be used by several contracts
    //////embedded: they dont have own addr, they are par of the code that use them
    //////library doesnt have storage, they only provide fn for other contracts
            
}
//92: Give an example of how to use a library in a smart contract
//////
//93: When is a library embedded vs deployed?
//Embedded library has functions that are internal
//Deployed library has functions that are public

library Lib{
    function add(uint a, uint b) pure internal returns(uint){
        return a+b;
    }
}
contract qn92_A{
    using Lib for uint;
    function add(uint a, uint b) pure external returns(uint){
        return a.add(b);
    }
}
library publicLib{
    function add(uint a, uint b) pure public returns(uint){
        return a+b;
    }
}
//94: what is a reentrancy attack?



