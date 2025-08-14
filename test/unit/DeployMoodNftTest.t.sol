// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft deployer;

    function setUp() public {
        deployer = new DeployMoodNft();
        // No need to call run() unless testing deployment
    }

    function testConvertSvgToUri() public view {
        string memory svg = '<svg xmlns="http://www.w3.org/2000/svg" width="100" height="100">'
                            '<circle cx="50" cy="50" r="40" fill="red" /></svg>';
        string memory expectedUri = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48Y2lyY2xlIGN4PSI1MCIgY3k9IjUwIiByPSI0MCIgZmlsbD0icmVkIiAvPjwvc3ZnPg==";
        
        string memory actualUri = deployer.svgToImageURI(svg);
        assert(
            keccak256(abi.encodePacked(expectedUri))==
            keccak256(abi.encodePacked(actualUri))
        );
    }
}
