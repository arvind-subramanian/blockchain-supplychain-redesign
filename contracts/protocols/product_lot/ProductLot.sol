pragma solidity ^0.4.18;

import "./ProductLotBase.sol";
import "../documents/DocumentBase.sol";
import "../agreements/Agreement.sol";

contract ProductLot is ProductLotBase {
      uint constant priceDecimals = 2;
      uint constant weightDecimals = 2;
      uint public packageWeight;
      uint public pricePerPackage;

      struct LotInfo {
        int farmerId;
        int lotId;
        string  category;
        string imageHash;
      }

    function addLot(int farmerId,int lotId, Agreement agreement, DocumentBase docStore){

    }
}
