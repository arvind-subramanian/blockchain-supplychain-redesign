pragma solidity ^0.4.18;
contract UserProfile {

enum UserProfileType{
  Farmer,
  ContractFarmingGroup,
  Regulator,
  Admin
}

enum UserProfileStatus {
  Pending,
  Active,
  Inactive
}

int id;
struct User {
  string userName;
  int userId;
  UserProfileType profileType;
  UserProfileStatus profileStatus;
}
mapping (address => User) userMap;

modifier onlyBy(address _account)
  {
      require(msg.sender == _account);
      // Do not forget the "_;"! It will
      // be replaced by the actual function
      // body when the modifier is used.
      _;
  }
  // define functions and modifiers for different roles here
  modifier onlyByActiveAdmin() {
    address _account = msg.sender;
    require(userMap[_account].profileType == UserProfileType.Admin);
    require(userMap[_account].profileStatus == UserProfileStatus.Active);
    _;
  }

  function createUser(string username,uint profileType, uint profileStatus){
    address _account = msg.sender;
    userMap[_account].userName = username;
    userMap[_account].profileType =UserProfileType(profileType);
    userMap[_account].profileStatus =UserProfileStatus(profileStatus);
}

/*function getUser() onlyByActiveAdmin  returns ( UserProfileType profileType, UserProfileStatus profileStatus){
    return ( userMap[msg.sender].profileType, userMap[msg.sender].profileStatus);
}*/

}
