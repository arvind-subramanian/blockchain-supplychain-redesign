pragma solidity ^0.4.17;

contract TokenAddress {

}
contract ProduceInfo {


address[16] public adopters;

//Token public tokenAddress;  //  farmer

mapping(uint256 => Produce) produceInfoMap;
/*function createTokenAddress(Token a) {
  tokenAddress = a;
 }*/


  struct Produce {
    uint256 produce_lot;
    bool  produce_quality;
    uint256 produce_price;
    address owner_id;
    address previous_owner_id;
    address certificate;
    uint256 produce_lot_quantity;
    // add location and other attributes
  }
  Produce [] producelist;



//  add single mango lot to blockhain, add filtering conditions
function getProduce() public view returns(Produce){
  return producelist[0];
}

function _createProduce(uint256 lot, bool quality, uint256 price ) public returns (uint256) {

  require(lot > uint256(0));
  require (quality == true );
  require(price > 0);
Produce memory _mango  = Produce ({
produce_lot: uint256(lot),
produce_quality:bool(quality),
produce_price:uint256(price),
owner_id: 0,
certificate:0,
produce_lot_quantity:10,
previous_owner_id :1
});

uint256 produceId = producelist.push(_mango) - 1;
produceInfoMap[produceId] = _mango;  // map id to lot
return produceId;
}

function createProduce(uint256 lot, bool quality, uint256 price ) public  returns (uint256) {
return _createProduce(lot,quality,price);
}




// Initial state default owner is the farmer id
function assignProduceCertificate(uint256 lotid, address certificate ) public  {
 var  produce = produceInfoMap[lotid];
    produce.certificate = certificate;
    produceInfoMap[lotid] = produce;
}

function changeOwnerOfLot(uint256 produce_id, address orig_owner, address new_owner) public returns (uint256) {

require(orig_owner != new_owner);
var produce = produceInfoMap[produce_id];
// change this securely add more checks
produce.owner_id = new_owner;

// take care of ownership history ?


return 1;
}

}
