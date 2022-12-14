// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20FixedSupplyOpenZeppelin is ERC20 {
    constructor() ERC20("FixedSupply", "FIX") {
        _mint(msg.sender, 1000);
    }

    function decimals() public view virtual override returns (uint8) {
        return 18;
    }
}