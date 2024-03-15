// bytecode: 0x6080604052348015600e575f80fd5b5060a58061001b5f395ff3fe6080604052348015600e575f80fd5b50600436106030575f3560e01c8063cdfead2e146034578063e026c017146045575b5f80fd5b6043603f3660046059565b5f55565b005b5f5460405190815260200160405180910390f35b5f602082840312156068575f80fd5b503591905056fea2646970667358221220ef73aff48df7da03bce0b3dceabfe76d2e2bc110edc27c5a0e1a18a4d01afe5a64736f6c63430008140033

// CONTRACT CREATION: 0x6080604052348015600e575f80fd5b5060a58061001b5f395ff3 //
// Free memory pointer: 0x40
PUSH1 0x80              // [0x80]
PUSH1 0x40              // [0x40, 0x80]
MSTORE                  // []
// Revert if msg.value != 0 (we have a non-payable constructor)
CALLVALUE               // [msg.value] -> Constructor payable check
DUP1                    // [msg.value, msg.value]
ISZERO                  // [msg.value == 0, msg.value]
PUSH1 0x0e              // [0x0e, msg.value == 0, msg.value]
JUMPI                   // [msg.value] -> If msg.value == 0, jump to 0x0e (L18)
PUSH0                   // [0x00, msg.value] -> If msg.value != 0
DUP1                    // [0x00, 0x00, msg.value]
REVERT                  // [msg.value] -> Revert if msg.value != 0
// Copy the runtime code on chain
JUMPDEST                // [msg.value]
POP                     // []
PUSH1 0xa5              // [0xa5]
DUP1                    // [0xa5, 0xa5]
PUSH2 0x001b            // [0x001b, 0xa5, 0xa5]
PUSH0                   // [0x00, 0x001b, 0xa5, 0xa5]
CODECOPY                // [0xa5] -> Copy code from 0x001b to 0xa5 into memory. From opcode next to the INVALID below to the end (the runtime code)
PUSH0                   // [0x00, 0xa5]
RETURN                  // [] -> Contract created by sending nil in the 'To' field of the transaction. No CREATE, no CREATE2
INVALID                 // []

// RUNTIME CODE: fe6080604052348015600e575f80fd5b50600436106030575f3560e01c8063cdfead2e146034578063e026c017146045575b5f80fd5b6043603f3660046059565b5f55565b005b5f5460405190815260200160405180910390f35b5f602082840312156068575f80fd5b503591905056 //
// Entry point of all calls to the contract
// Free memory pointer: 0x40
PUSH1 0x80              // [0x80]
PUSH1 0x40              // [0x40, 0x80]
MSTORE                  // []
// Revert if msg.value != 0. Soldity optimization: no function in this contract is payable
CALLVALUE               // [msg.value]
DUP1                    // [msg.value, msg.value]
ISZERO                  // [msg.value == 0, msg.value]
PUSH1 0x0e              // [0x0e, msg.value == 0, msg.value]
JUMPI                   // [msg.value] -> If msg.value == 0, jump to 0x0e (L45)
PUSH0                   // [0x00, msg.value] -> If msg.value != 0
DUP1                    // [0x00, 0x00, msg.value]
REVERT                  // [msg.value] -> Revert if msg.value != 0
// Check if calldata has lenght enough to contain the function selector
JUMPDEST                // [msg.value]
POP                     // []
PUSH1 0x04              // [0x04]
CALLDATASIZE            // [msg.data.length, 0x04]
LT                      // [msg.data.length < 0x04]
PUSH1 0x30              // [0x30, msg.data.length < 0x04]
JUMPI                   // [] -> If msg.data.length < 0x04, jump to 0x30 (L69)
// Function Dispatcher
// Is the function selector 0xcdfead2e?
PUSH0                   // [0x00]
CALLDATALOAD            // [msg.data[0:32]]
PUSH1 0xe0              // [0xe0, msg.data[0:32]]
SHR                     // [msg.data[0:4]]
DUP1                    // [msg.data[0:4], msg.data[0:4]]
PUSH4 0xcdfead2e        // [0xcdfead2e, msg.data[0:4], msg.data[0:4]]
EQ                      // [msg.data[0:4] == 0xcdfead2e, msg.data[0:4]]
PUSH1 0x34              // [0x34, msg.data[0:4] == 0xcdfead2e, msg.data[0:4]]
JUMPI                   // [msg.data[0:4]] -> If msg.data[0:4] == 0xcdfead2e, jump to 0x34 (L75)
// Is the function selector 0xe026c017?
DUP1                    // [msg.data[0:4], msg.data[0:4]]
PUSH4 0xe026c017        // [0xe026c017, msg.data[0:4], msg.data[0:4]]
EQ                      // [msg.data[0:4] == 0xe026c017, msg.data[0:4]]
PUSH1 0x45              // [0x45, msg.data[0:4] == 0xe026c017, msg.data[0:4]]
JUMPI                   // [msg.data[0:4]] -> If msg.data[0:4] == 0xe026c017, jump to 0x45 (L91)
// Function selector not found
JUMPDEST                // []
PUSH0                   // [0x00]
DUP1                    // [0x00, 0x00]
REVERT                  // [0x00] -> Revert if msg.data.length < 0x04
// Function 0xcdfead2e (updateHorseNumber), and setup PC to jump later on
JUMPDEST                // [msg.data[0:4]]
PUSH1 0x43              // [0x43, msg.data[0:4]]
PUSH1 0x3f              // [0x3f, 0x43, msg.data[0:4]]
CALLDATASIZE            // [msg.data.length, 0x3f, 0x43, msg.data[0:4]]
PUSH1 0x04              // [0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
PUSH1 0x59              // [0x59, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
JUMP                    // [0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]] jump to 0x59 (L109)
// Save parameters to storage
JUMPDEST                // [msg.data[4:32], 0x43, msg.data[0:4]]
PUSH0                   // [0x00, msg.data[4:32], 0x43, msg.data[0:4]]
SSTORE                  // [0x43, msg.data[0:4]] -> Save msg.data[4:32] to storageSlot0
JUMP                    // [msg.data[0:4]] -> Jump to 0x43 (L88)
// Stop execution
JUMPDEST                // [msg.data[0:4]]
STOP                    // [] -> Stop execution!
// Function 0xe026c017 (readHorseNumber), and setup PC to jump later on
JUMPDEST                // [msg.data[0:4]]
PUSH0                   // [0x00, msg.data[0:4]]
SLOAD                   // [storageSlot0, msg.data[0:4]] -> Load storageSlot0 to the stack
PUSH1 0x40              // [0x40, storageSlot0, msg.data[0:4]]
MLOAD                   // [memory[64:96], storageSlot0, msg.data[0:4]] -> Loads the memory pointer
SWAP1                   // [storageSlot0, memory[64:96], msg.data[0:4]]
DUP2                    // [memory[64:96], storageSlot0, memory[64:96], msg.data[0:4]]
MSTORE                  // [memory[64:96], msg.data[0:4]] -> Writes in the memory pointer (memory[64:96]) the value from storageSlot0
PUSH1 0x20              // [0x20, memory[64:96], msg.data[0:4]]
ADD                     // [0x20 + memory[84:96], msg.data[0:4]] -> Add 32 to the memory pointer (next available memory slot)
PUSH1 0x40              // [0x40, 0x20 + memory[84:96], msg.data[0:4]]
MLOAD                   // [memory[64:96], 0x20 + memory[84:96], msg.data[0:4]] -> Loads the memory pointer
DUP1                    // [memory[64:96], memory[64:96], 0x20 + memory[84:96], msg.data[0:4]]
SWAP2                   // [0x20 + memory[84:96], memory[64:96], memory[64:96], msg.data[0:4]] 
SUB                     // [((0x20 + memory[84:96]) - memory[64:96]), memory[64:96], msg.data[0:4]] 
SWAP1                   // [memory[64:96], ((0x20 + memory[84:96]) - memory[64:96]), msg.data[0:4]] 
RETURN                  // [msg.data[0:4]] -> Return the value in storageSlot0 -> offset:memory[64:96], size:0x20
// Is there more data than the function_selector in the calldata?
JUMPDEST                // [0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]] 
PUSH0                   // [0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
PUSH1 0x20              // [0x20, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
DUP3                    // [0x04, 0x20, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
DUP5                    // [msg.data.length, 0x04, 0x20, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
SUB                     // [msg.data.length - 0x40, 0x20, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
SLT                     // [((msg.data.length - 0x40) < 0x20), 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
ISZERO                  // [((msg.data.length - 0x40) < 0x20) == 0, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
PUSH1 0x68              // [0x68, ((msg.data.length - 0x40) < 0x20) == 0, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
JUMPI                   // [0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]] -> If ((msg.data.length - 0x40) < 0x20) != 0 (calldata has input apart from the function_selector), jump to 0x68 (L123)
PUSH0                   // [0x00, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
DUP1                    // [0x00, 0x00, 0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
REVERT                  // [0x00, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]] -> Revert if ((msg.data.length - 0x40) < 0x20) == 0
// Load the first 32 bytes of the calldata (parameters) after the function_selector
JUMPDEST                // [0x68, 0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]] 
POP                     // [0x04, msg.data.length, 0x3f, 0x43, msg.data[0:4]]
CALLDATALOAD            // [msg.data[4:32], msg.data.length, 0x3f, 0x43, msg.data[0:4]] -> Load the first 32 bytes of the calldata (parameters) after the function_selector
SWAP2                   // [0x3f, msg.data.length, msg.data[4:32], 0x43, msg.data[0:4]] 
SWAP1                   // [msg.data.length, 0x3f, msg.data[4:32], 0x43, msg.data[0:4]]
POP                     // [0x3f, msg.data[4:32], 0x43, msg.data[0:4]]
JUMP                    // [msg.data[4:32], 0x43, msg.data[0:4]] -> Jump to the 0x03f (L83)

// METADATA: fea2646970667358221220ef73aff48df7da03bce0b3dceabfe76d2e2bc110edc27c5a0e1a18a4d01afe5a64736f6c63430008140033 //
INVALID
LOG2
PUSH5 0x6970667358
INVALID
SLT
SHA3
INVALID
PUSH20 0xaff48df7da03bce0b3dceabfe76d2e2bc110edc2
PUSH29 0x5a0e1a18a4d01afe5a64736f6c63430008140033