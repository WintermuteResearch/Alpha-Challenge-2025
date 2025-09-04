// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Interfaces.sol";
import "../src/Constants.sol";

contract Euler is Test {
    address user = vm.envAddress("USER_ADDRESS");

    function setUp() public {
        vm.createSelectFork(vm.envString("ETH_RPC_URL"), 16818350);
        vm.prank(0x229443bf7F1297192394B7127427DB172a5bDe9E);
        IERC20(0x1b808F49ADD4b8C6b5117d9681cF7312Fcf0dC1D).transfer(user, 4700 ether);
    }

    function test_Solution() public {
        vm.startBroadcast(user);
        // Your solution goes here!
        vm.stopBroadcast();
        checkSolve();
    }

    function checkSolve() public view {
        bool solved = IERC20(USDC).balanceOf(user) >= 2_500_000e6;
        require(solved);
        console.log("Task #7 'It's Oiler' has been solved!");
    }
}
