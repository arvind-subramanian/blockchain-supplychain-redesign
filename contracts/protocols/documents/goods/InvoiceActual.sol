pragma solidity ^0.4.18;
import "./InvoiceMeta.sol";


contract InvoiceActual is InvoiceMeta {
 struct InvoiceMetaData {
int id;
string description;
string countryOfOrigin;
int weight;  // floating point
int hsCode;
int quantity;
int unitPrice;
int totalPrice;
string ipfsHash; // link to the scanned document stored in ipfs
}
mapping(int => InvoiceMetaData) invoiceStore;
  function generateInvoice(string description, string country, int weight, int hsCode, int quantity,
    int unitPrice, int totalPrice, string ipfsHash)  returns (int) {
     InvoiceMetaData memory invoice;
     invoice.description= description;
     invoice.countryOfOrigin = country;
     invoice.weight = weight;
     invoice.hsCode =hsCode;
     invoice.quantity = quantity;
     invoice.unitPrice = unitPrice;
     invoice.totalPrice = totalPrice;
     invoice.ipfsHash =ipfsHash;
     invoice.id = 12; // generate unique id here
     invoiceStore[invoice.id]= invoice;
     return invoice.id;

    }

 function lookUpInvoice(int invoiceId) constant returns
  (string, string, int,int,int,int,string) {
      return (
      invoiceStore[invoiceId].description,
      invoiceStore[invoiceId].countryOfOrigin,
      invoiceStore[invoiceId].weight,
      invoiceStore[invoiceId].hsCode,
       invoiceStore[invoiceId].quantity,
       invoiceStore[invoiceId].unitPrice,
       invoiceStore[invoiceId].ipfsHash);
  }

}
