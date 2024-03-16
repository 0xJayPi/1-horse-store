// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.20;

import "../../src/HorseStoreV1/HorseStore.sol";
import "forge-std/Test.sol";
import {IHorseStore} from "./IHorseStore.sol";

abstract contract Base_TestV1 is Test {
    IHorseStore public horseStore;

    // To add the yul differential testing
    // bytes yulCode =
    //     "60056035565b8063cdfead2e14601f5763e026c01714601c575f80fd5b5b005b50602d60295f6040565b6031565b601d565b5f55565b600160e01b5f350490565b6020026004016020810136106053573590565b5f80fd";

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
