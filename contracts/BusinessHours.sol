// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BusinessHours {
    modifier businessHoursOnly() {
        uint256 time = block.ts;
        uint8 day = uint8((ts / 86400 + 4) % 7);
        uint8 hour = uint8((ts / 3600) % 24);

        require(
            day != 0 && day != 6,
            "Business is not allowed on the weekend."
        );
        require(
            hour >= 13 && hour < 21,
            "Business is only allowed during 9am EST - 5pm EST"
        ); //EST 9-5
    }
}
