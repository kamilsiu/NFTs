// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../../script/DeployBasicNft.s.sol";
import {BasicNft} from "../../src/BasicNft.sol";

contract BasicNftTest is Test {
    DeployBasicNft deployer;
    BasicNft public basicNft;
    address public USER = makeAddr("user");
    string public constant PLUSH_CAT =
        "ipfs://QmTN4YKj5MnNjwv5XwEzA3evddYT8nzRhCC5SygdfAUWQr?filename=Plush%20Penguin%20and%20Sleeping%20Cat.png";

    function setUp() public {
        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Baby";
        string memory actualName = basicNft.name();
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)));
    }

    function testCanMintAndHaveValue() public {
        vm.prank(USER);
        basicNft.mintNft(PLUSH_CAT);

        assert(basicNft.balanceOf(USER) == 1);
        assert(keccak256(abi.encodePacked(PLUSH_CAT)) == keccak256(abi.encodePacked(basicNft.tokenURI(0))));
    }
}
