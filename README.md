# INTRODUCTION

This is a design for a problem specified in a Blockchain chain hackathon over here: (Problem 2)

http://www.bengalurutechsummit.com/blockchain-hackathon/resources/Final_Use_Case.pdf
The detailed problem statement is present in the PDF, and the title of the problem is as follows:

## A Technical Solution to tracking product quality and reliability of organic Banganapalli mango variety in export 




# DESIGN APPROACH

The main entities in the ecosystem are Farmers,Middlemen, and Consumers, and Documents

## DOCUMENTS 

For this particular problem statement, the documents required fall under the category of 
  (a)Goods  - Packing list, Certificate of Origin
  
  (b)Shipment - Mate Receipt, Shipping bill, Bill of Origin
  
  (c)Payment - Letter of Credit, Bill of Exchange
  
  (d)Quality - PhytoSanitary Certificate,GLOBALGAP Certification, Health Certificate, Organic Certificate
  
  (e)Foreign Exchange - GR Form, Bank Realization Certification
  

Specific attributes of each of the document listed above can be obtained online as follows:
 **Cerificate Of Origin** : http://agriexchange.apeda.gov.in/Ready%20Reckoner/Certificates_of_Origin.aspx
 
 **Packing List** : http://servicios.educarm.es/templates/portal/ficheros/websDinamicas/30/export_documents.pdf
 
 **Mate Receipt** : http://howtoexportimport.com/Mate-Receipt-and-its-contents-4369.aspx
 
 **Shipping Bill** : http://www.eximguru.com/exim/guides/how-to-export/ch_17_export_documents.aspx#shipping_bill_/_bill_of_export

 
 **Documents required are organized under contracts/protocol/documents/CATEGORY/DOCUEMNT_NAME** 
 
 Each document is modelled as a contract. Each document type (Contract) also has a validation logic that it implements for a subset of argument inputs. 
 
 
 
 ## ACTORS IN THE SYSTEM AND THEIR RELATIONSHIP: 
 
 There can be different actors in the system (Farmers,Producers, Regulators,Administrator), which can exist in different states (pending,active,deleted)
 
 **To model the same, we have the UserProfile Contract in contracts/protocol/user_profile**
 
 
 
 ## PRODUCTS,AGREEMENTS,IOT MEASUREMENTS:
 
  The association of three parts are modelled as follows: 
  A "Lot" is a combination of (farmerId, LotId,foodCategory,ImageHash). 
  Other important contract categories  are the Agreement, IOTMeasurements, and ProductLot. 
  Through inheritance structure, we structure the contracts with the base contract "definining" the main functionality, and the subclass actually implementing the same.
  
  **These are organized under contracts/protocols/agreements, contracts/protocols/product_lot/, contract/protocols/iotmeasurements**
  
  
## IN TRANSIT INFORMATION OF PRODUCT:

**This is organized under contract/protocol/transport** 

This Contract captures information of the LotStatus, the rejection reason, document status etc.  
  
  
 
 
 




