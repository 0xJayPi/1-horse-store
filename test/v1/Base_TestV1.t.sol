// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.20;

import "../../src/HorseStore.sol";
import "forge-std/Test.sol";
import {IHorseStore} from "./IHorseStore.sol";

abstract contract Base_TestV1 is Test {
    IHorseStore public horseStore;

    function setUp() external virtual {
        horseStore = IHorseStore(address(new HorseStore()));
    }

    function testReadValue() external {
        assertEq(horseStore.readNumberOfHorses(), 0);
    }

    function testWriteValue(uint256 numberOfHorses) external {
        horseStore.updateHorseNumber(numberOfHorses);
        assertEq(horseStore.readNumberOfHorses(), numberOfHorses);
    }
}
