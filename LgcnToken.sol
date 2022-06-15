// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./builtin.sol";

contract LgcnToken is ERC20 {
    /**
     * @param wallet Address of the wallet, where tokens will be transferred to
     */
    constructor(address wallet) ERC20("LEGACY NETWORK", "LGCN") {
        require(wallet != address(0), "Can not be zero wallet");
        _mint(wallet, (7200000000 ether));
    }
}
