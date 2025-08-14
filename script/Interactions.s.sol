// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {BasicNft} from "../src/BasicNft.sol";

contract MintBasicNft is Script {
    string public constant PLUSH_CAT =
        "ipfs://QmTN4YKj5MnNjwv5XwEzA3evddYT8nzRhCC5SygdfAUWQr?filename=Plush%20Penguin%20and%20Sleeping%20Cat.png";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("BasicNft", block.chainid);
        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNft(contractAddress).mintNft(PLUSH_CAT);
        vm.stopBroadcast();
    }
}
