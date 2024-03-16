// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.20;

import {Base_TestV1, IHorseStore} from "./Base_TestV1.t.sol";
import {HorseStoreYul} from "../../src/v1/HorseStoreYul.sol";

contract HoreStoreYull is Base_TestV1 {
    function setUp() external override {
        horseStore = IHorseStore(address(new HorseStoreYul()));
    }
}
