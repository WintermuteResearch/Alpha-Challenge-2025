// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Interfaces.sol";
import "../src/Constants.sol";

contract stETHDepeg is Test {
    address user = vm.envAddress("USER_ADDRESS");

    function setUp() public {
        vm.createSelectFork(vm.envString("ETH_RPC_URL"), 21895252);
        vm.startPrank(0x47666Fab8bd0Ac7003bce3f5C3585383F09486E2);
        bytes memory code = multicallContractCode;
        address multicallContract;
        assembly {
            multicallContract := create(0, add(code, 0x20), mload(code))
        }
        IERC20(stETH).transfer(multicallContract, 90375547907685258392042);
        (bool success,) = multicallContract.call(multiCall);
        require(success);
        vm.stopPrank();
    }

    function test_Solution() public {
        vm.startBroadcast(user);
        // Your solution goes here!
        vm.stopBroadcast();
        checkSolve();
    }

    function checkSolve() public view {
        bool solved = IERC20(USDC).balanceOf(user) >= 75_000_000e6;
        require(solved);
        console.log('Task #8 "What if...?" has been solved!');
    }
}
