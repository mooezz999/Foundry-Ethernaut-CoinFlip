// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/CoinFlipAttacker.sol";

contract CoinFlipAttackerScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        CoinFlipAttacker coinFlipAttacker = new CoinFlipAttacker(
            0x198e8E2f34e6A07111B8E3b09B3d14c0265C8EAE
        );

        vm.stopBroadcast();
    }
}
