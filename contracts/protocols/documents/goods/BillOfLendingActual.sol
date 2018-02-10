pragma solidity ^0.4.18;
import "./BillOfLendingMeta.sol";

contract BillOfLendingActual is BillOfLendingMeta{
struct BillOfLandingMedataData{
 string shipper;
int256 bookingNumber;
string consignee;
string routingPreference;
string placeOfLanding;
string placeOfDelivery;
}
mapping(int => BillOfLandingMedataData) billLandingStore;
  function addBillOfLanding(int billId )  {
  BillOfLandingMedataData memory bmeta ;
  bmeta.shipper  ="1";
  bmeta.bookingNumber =1;
  bmeta.consignee ="consignee";
  billLandingStore[billId] = bmeta;
  }

  function getBillOfLanding(int id) constant returns  (string, int256,string,string,string, string){
    return( billLandingStore[id].shipper,
    billLandingStore[id].bookingNumber,
    billLandingStore[id].consignee,
    billLandingStore[id].routingPreference,
    billLandingStore[id].placeOfLanding,
    billLandingStore[id].placeOfDelivery);
  }

}
