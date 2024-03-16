object "HorseStoreYul" {
    code {
        // Contract Deployment
        datacopy(0, dataoffset("runtime"), datasize("runtime"))
        return(0, datasize("runtime"))
    }
    object "runtime" {
        code {
            // function dispatcher
            switch selector()

            // updateHorseNumber
            case 0xcdfead2e {
                storeNumber(decodeAsUint(0)) 
            }
            // readHorseNumber
            case 0xe026c017 { 

            }
            // no function selector matched
            default { 
                revert(0, 0)
            }
            
            function storeNumber(newNumber) {
                sstore(0, newNumber)
            }
            function readNumber() -> r {
                r := sload(0)
            }

            /* -- decoding functions -- */
            function selector() -> s {
                s := div(calldataload(0), 0x100000000000000000000000000000000000000000000000000000000) // Yul's recommended way to read the first 4 bytes of the calldata = function selector
            }
            function decodeAsUint(offset) -> v {
                let pos := add(4, mul(offset, 0x20))
                if lt(calldatasize(), add(pos, 0x20)) {
                    revert(0, 0)
                }
                v := calldataload(pos)
            }
            function returnUint(v) {
                mstore(0, v)
                return(0, 0x20)
            }
        }
    }
}