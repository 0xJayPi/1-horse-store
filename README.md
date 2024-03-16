## Huff and Yul Deep Dives

This project is a deep dive into the Huff and Yul languages. The goal is to acquire a further understanding of Opcodes, the VM, and the languages themselves. This is a work in progress and will be updated as I continue my learning path.

## Reference

- [EVM Opcodes & Solidity Gas MAstery Tutorial](https://youtu.be/Yn58Jmkf2ow?si=aFmKUmrnXKDU6_Vm)
- [EVM Opcodes](https://www.evm.codes/) 
- [EVM Playground](https://www.evm.codes/playground)
- [The Huff Docs](https://docs.huff.sh/)
- [Yul](https://docs.soliditylang.org/en/latest/yul.html)

## Codebase

### v1 Simple Contract

Main Contracts:
- src/HorseStoreV1/HorseStore.sol
- src/HorseStoreV1/HorseStore.huff
- src/HorseStoreV1/HorseStore.sol
- yul/HorseStoreYul.yul

Test suit:
- test/HorseStoreV

Opcodes breakdown:
Breakdown of the opcodes used in src/v1/HorseStore.sol
- breakdowns/solc-breakdowns

### v2 More Complex Contract
Main Contracts:
- src/HorseStoreV2/HorseStore.sol
- src/HorseStoreV2/HorseStore.huff

Test suit:
- test/HorseStoreV2

## ToDo
- [ ] [Huff official tutorials](https://docs.huff.sh/tutorial/overview/#introduction)