contract OrchardRegistration {
  int orchardId;
  function addOrchard(string orchardName, address farmerId, address certifier);
  function getOrchard(int id) returns (string, int farmerId);
}

contract OrchardRegistrationActual is OrchardRegistration {
 struct OrchardData {
int orchardId;
string orchardName;
address farmerId;
address certifierId;
}
mapping (int => OrchardData) OrchardInfo;
/*Implement two functions */
}
