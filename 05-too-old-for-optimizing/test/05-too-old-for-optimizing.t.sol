// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import "../src/Interfaces.sol";
import "../src/Constants.sol";

contract USDTDepeg is Test {
    address user = vm.envAddress("USER_ADDRESS");

    function setUp() public {
        vm.createSelectFork(vm.envString("ETH_RPC_URL"), 15939500);
        // User is set up with 7m USDT
        deal(USDT, user, 7_000_000e6);
        // Aave V1 is enabled for USDT
        vm.prank(0xEE56e2B3D491590B5b31738cC34d5232F378a8D5);
        (bool success,) =
            0x4965f6FA20fE9728deCf5165016fc338a5a85aBF.call(abi.encodeWithSelector(hex"a5bc826c", USDT, 60, 65, 110));
        require(success);
    }

    function test_Solution() public {
        vm.startBroadcast(user);
        // Your solution goes here!
        vm.stopBroadcast();
        checkSolve();
    }

    function checkSolve() public view {
        uint256 totalUsdt = AaveV1(AAVE_V1).getReserveTotalLiquidity(USDT);
        uint256 totalUsdcBorrowed = AaveV1(AAVE_V1).getReserveTotalBorrows(USDC);
        uint256 usdtBalance = IERC20(USDT).balanceOf(user);

        bool solved = totalUsdcBorrowed > uint256(4748082819691) * 98 / 100 && usdtBalance > (3_500_000e6 * 98 / 100)
            && totalUsdt > (uint256(5190619886081) + 7_000_000e6 * 98 / 100);
        require(solved);
        console.log('Task #5 "Too old for optimizing" has been solved!');
    }
}
