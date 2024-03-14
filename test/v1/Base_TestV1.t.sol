// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.20;

import "../../src/HorseStore.sol";
import "forge-std/Test.sol";

abstract contract Base_TestV1 is Test {
    HorseStore public horseStore;

    function setUp() external virtual {
        horseStore = new HorseStore();
    }

    function testReadValue() external {
        assertEq(horseStore.readNumberOfHorses(), 0);
    }

    function testWriteValue() external {
        horseStore.updateHorseNumber(5);
        assertEq(horseStore.readNumberOfHorses(), 5);
    }
}
