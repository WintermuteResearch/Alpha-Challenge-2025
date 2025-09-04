// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Interfaces.sol";
import "../src/Constants.sol";

contract CRVETH is Test {
    address user = vm.envAddress("USER_ADDRESS");

    function setUp() public {
        vm.createSelectFork(vm.envString("ETH_RPC_URL"), 17807828);
    }

    function test_Solution() public {
        vm.startBroadcast(user);
        // Your solution goes here!
        vm.stopBroadcast();
        checkSolve();
    }

    function checkSolve() public view {
        bool solved = IERC20(WETH).balanceOf(user) >= 7670 ether && IERC20(CRV).balanceOf(user) >= 7153334;
        require(solved);
        console.log('Task #6 "Obstacle race" has been solved!');
    }
}
