// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {EIP4788Wrapper} from "../src/EIP4788Wrapper.sol";

contract EIP4788WrapperTest is Test {
    EIP4788Wrapper public oracle;

    function setUp() public {
        oracle = new EIP4788Wrapper();
    }
}
