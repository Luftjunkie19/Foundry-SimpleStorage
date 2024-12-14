// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "../lib/forge-std/";

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeployFundMe is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
    }
}
