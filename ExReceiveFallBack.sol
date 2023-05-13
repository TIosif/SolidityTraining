//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract SampleFallback {
    uint public lastValueSent;
    string public ultimaFunctieFolosita;
    uint vTest;

    receive() external payable {
        lastValueSent = msg.value;
        ultimaFunctieFolosita = "Receive";
    } 

    fallback () external payable {
        lastValueSent = msg.value;
        ultimaFunctieFolosita = "Fallback";
    }

    function setVTest (uint vTestNou) public {
        vTest = vTestNou;
    }

}
