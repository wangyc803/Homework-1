// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//import {Test, console} from "forge-std/Test.sol";
/* Problem 1 Interface & Contract */
//function isEnrolled() external view returns (bool);
contract StudentV1 {
    // Note: You can declare some state variable
    uint8 sauby=0;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (sauby == 0){
            sauby++;
            return 1000;
        }
        return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (IClassroomV2(msg.sender).isEnrolled()){
            return 123;
        }
        return 1000;
    }
}

/* Problem 3 Interface & Contract */
//constant uint256 gas = gasleft();
contract StudentV3 {
    
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        
        if (gasleft() > 7000){
            //console.log(gasleft());
            return 1000;
        }
        //console.log(gasleft());
        return 123;
        
    }
        
}
