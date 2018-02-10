//http://agriexchange.apeda.gov.in/Ready%20Reckoner/Certificates_of_Origin.aspx
import "./CertificateOfOriginMeta.sol";
contract CertificateOfOriginActual {
struct certificateOriginMetaData {
  string certificateOriginType; //
  /*
This can be
1.Non preferential Certificate of Origin:

2.Certificate of Origin for availing Concessions under GSP

3. Certificate for availing Concessions under Commonwealth Preferences (CWP)

4.  Certificate for availing Concessions under other Systems of. Preference
  */
  string companyName;
  string importerName;
  string packageNumber;
  string packageDescription;
  string chamberOfCommerceApproval;
}

// This data can be used to interact with smart contract of exporter;
struct certificateOfOriginData {
string chamberOfCommerce;
string logoChamberOfCommerce;
string addressExporter;
string addressConsignee;
string vesselName;
string portOfLanding;
string portOfDischarge;
string placeOfDelivery;
string containerNumber;
string packageDescription;
int quantity;
string signingAuthority;
string ipfsHashOfCertificateOrigin; // link to the certificate data
}


}
