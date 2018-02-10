pragma solidity ^0.4.18;

import "./Agreement.sol";

/*Extend the agreement with status of delivery */
contract EscrowAgreement is Agreement {
    uint balance;
    address public buyer;
    address public seller;
    address private escrow;
    uint private start;
    bool buyerOk;
    bool sellerOk;
  }
