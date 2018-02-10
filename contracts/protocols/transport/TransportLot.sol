pragma solidity ^0.4.18;

import "./TransportLotBase.sol";

contract TransportLot {
  enum LotStatus{
    InTransit,
    Accepted,
    Rejected
  }
  enum LotStatusRejectionReason{
    NoError,
    GoodQualityBad,
    StorageNotGood,
    PesticideContentDetected,
    PackagingBad,
    DocumentVerificationFailed
  }

  enum DocumentFailureReason {
    NoError,
    DocumentA,
    DocumentB,
    DocumentC
  }
  enum PaymentStatus {
    PaymentPending,
    PayementPartial,
    PaymentComplete
  }

struct LocationDelta {
  int lotId;
  int locationId;
  LotStatus lotStatus;
  LotStatusRejectionReason lotRejectionReason;
  DocumentFailureReason documentRejectionReason;
  PaymentStatus payementStatus;
}

/* For LotId, store in array inputs data that are updated or changed */
mapping (int => LocationDelta[] ) lotIdArray;

event PrintArrayLength(string ,uint len);

function addLocationTransitInfo(int lotId, int locationId,uint lotStatus,
uint lotRejectionReason, uint documentRejection, uint paymentsStatus){
    LocationDelta memory ld;
    ld.lotId = lotId;
    ld.locationId = locationId;
    ld.lotStatus = LotStatus(lotStatus);
    ld.lotRejectionReason = LotStatusRejectionReason(lotRejectionReason);
    ld.documentRejectionReason =DocumentFailureReason(documentRejection);
    ld.payementStatus = PaymentStatus(paymentsStatus);
    lotIdArray[lotId].push(ld);
    PrintArrayLength("Length",lotIdArray[lotId].length );
}

}
