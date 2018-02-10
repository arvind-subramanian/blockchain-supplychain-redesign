pragma solidity ^0.4.18;

import "../documents/DocumentBase.sol";
import "../agreements/Agreement.sol";

contract ProductLotBase {

  function addLot(int farmerId,int lotId, int quantity,
    Agreement agreement, DocumentBase doc);
}
