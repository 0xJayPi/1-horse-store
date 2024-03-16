// SPDX-License-Identifier: GPL-3.0-only

pragma solidity 0.8.20;

import {Base_TestV1, IHorseStore} from "./Base_TestV1.t.sol";
import {HuffDeployer} from "foundry-huff/HuffDeployer.sol";

contract HoreStoreHuff is Base_TestV1 {
    string public constant HORSE_STORE_HUFF_LOCATION = "HorseStoreV1/HorseStore";

    function setUp() external override {
        horseStore = IHorseStore(HuffDeployer.config().deploy(HORSE_STORE_HUFF_LOCATION));
    }
}
