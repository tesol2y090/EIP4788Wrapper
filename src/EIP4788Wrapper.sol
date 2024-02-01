// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract EIP4788Wrapper {
    address public immutable beaconRootAddress = 0x000F3df6D732807Ef1319fB7B8bB8522d0Beac02;
    
    function getParentBeaconRoot() external returns (bytes memory) {
        // Get the current timestamp
        bytes32 currentTimestamp = bytes32(block.timestamp);

        (bool success, bytes memory result) = beaconRootAddress.call(abi.encode(currentTimestamp));

        require(success, "Function call failed");

        return result;
    }

    function getBeaconRootWithTimestamp(uint256 timestamp) external returns (bytes memory) {
        // Get the current timestamp
        bytes32 currentTimestamp = bytes32(timestamp);

        (bool success, bytes memory result) = beaconRootAddress.call(abi.encode(currentTimestamp));

        require(success, "Function call failed");

        return result;
    }
}
