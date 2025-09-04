// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

interface IERC20 {
    function balanceOf(address) external view returns (uint256);
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function approve(address, uint256) external returns (bool);
}

interface AaveV1 {
    function getUserBasicReserveData(address, address) external view returns (uint256, uint256, uint256, bool);
    function getUserBorrowBalances(address, address) external view returns (uint256, uint256, uint256);
    function getReserveTotalLiquidity(address) external view returns (uint256);
    function getReserveTotalBorrows(address) external view returns (uint256);
    function borrow(address, uint256, uint256, uint16) external;
    function deposit(address, uint256, uint16) external;
}

interface ICurve {
    function exchange(uint256, uint256, uint256, uint256) external payable;
    function get_dy(uint256, uint256, uint256) external view returns (uint256);
    function get_dx(uint256, uint256, uint256) external view returns (uint256);
}

interface ICurve2 {
    function exchange(int128, int128, uint256, uint256) external payable;
    function get_dy(int128, int128, uint256) external view returns (uint256);
    function get_dx(int128, int128, uint256) external view returns (uint256);
}

interface ILLAMMA {
    struct Position {
        address user;
        uint256 x;
        uint256 y;
        uint256 debt;
        int256 b;
    }

    function liquidate(address, uint256) external;
    function liquidate_extended(address, uint256, uint256, bool, address, uint256[] calldata) external;
    function create_loan(uint256, uint256, uint256) external;
    function max_borrowable(uint256, uint256, uint256) external view returns (uint256);
    function debt(address) external view returns (uint256);
    function health(address) external view returns (uint256);
    function users_to_liquidate() external view returns (Position[] memory);
    function tokens_to_liquidate(address) external view returns (uint256);
}
