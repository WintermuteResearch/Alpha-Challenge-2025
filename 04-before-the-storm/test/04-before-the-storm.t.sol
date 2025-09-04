// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Interfaces.sol";
import "../src/Constants.sol";

contract LLAMMALiquidation is Test {
    address user = vm.envAddress("USER_ADDRESS");

    function setUp() public {
        vm.createSelectFork(vm.envString("ETH_RPC_URL"), 20063807);
    }

    function test_Solution() public {
        vm.startBroadcast(user);
        // Your solution goes here!
        vm.stopBroadcast();
        checkSolve();
    }

    function checkSolve() public view {
        // User must have CRV balance of >= 20,000
        uint256 balance = IERC20(CRV).balanceOf(user);
        require(balance >= 20_000e18);

        // At least 1% of the position has to be liquidated
        uint256 debt = ILLAMMA(LLAMMA).debt(LIQUIDATABLE_USER);
        require(debt <= STARTING_DEBT * 99 / 100);

        console.log('Task #4 "Before the storm" has been solved!');
    }
}
