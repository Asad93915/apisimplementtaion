class ModelResponse {
  int status;
  String message;
  List<Data> data;

  ModelResponse({this.status, this.message, this.data});

  ModelResponse.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    message = json['Message'];
    if (json['Data'] != null) {
      // ignore: deprecated_member_use
      data = new List<Data>();
      json['Data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Message'] = this.message;
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int id;
  String email;
  bool emailConfirmed;
  String passwordHash;
  Null securityStamp;
  Null phoneNumber;
  bool phoneNumberConfirmed;
  bool twoFactorEnabled;
  Null lockoutEndDateUtc;
  bool lockoutEnabled;
  int accessFailedCount;
  String userName;
  int roleId;
  String userPic;
  Null mobile;
  Null city;
  String taxId;
  Null address;
  Null zipCode;
  String expiryDate;
  String lastLogin;
  Null lastChangePwdDate;
  bool isActive;
  bool deleted;
  String createdDate;
  Null modifiedDate;
  String firstname;
  String lastname;
  String phone;
  bool accountant;
  Null medicalDoctor;
  Null churchMember;
  Null missionary;
  Null insuranceAgent;
  String hearfrom;
  Null profileImg;
  Null describeyourself;
  Null describeotheroption;
  Null imageupload;
  bool isPause;
  bool isCancelled;
  Null activityLog;
  Null aspNetUserClaims;
  Null aspNetUserLogins;
  Null faqs;
  Null loginPanels;
  Null missionTeamMembers;
  Null missionUserMasterTemplates;
  Null missionUserVerifications;

  Data(
      {this.id,
        this.email,
        this.emailConfirmed,
        this.passwordHash,
        this.securityStamp,
        this.phoneNumber,
        this.phoneNumberConfirmed,
        this.twoFactorEnabled,
        this.lockoutEndDateUtc,
        this.lockoutEnabled,
        this.accessFailedCount,
        this.userName,
        this.roleId,
        this.userPic,
        this.mobile,
        this.city,
        this.taxId,
        this.address,
        this.zipCode,
        this.expiryDate,
        this.lastLogin,
        this.lastChangePwdDate,
        this.isActive,
        this.deleted,
        this.createdDate,
        this.modifiedDate,
        this.firstname,
        this.lastname,
        this.phone,
        this.accountant,
        this.medicalDoctor,
        this.churchMember,
        this.missionary,
        this.insuranceAgent,
        this.hearfrom,
        this.profileImg,
        this.describeyourself,
        this.describeotheroption,
        this.imageupload,
        this.isPause,
        this.isCancelled,
        this.activityLog,
        this.aspNetUserClaims,
        this.aspNetUserLogins,
        this.faqs,
        this.loginPanels,
        this.missionTeamMembers,
        this.missionUserMasterTemplates,
        this.missionUserVerifications});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    email = json['Email'];
    emailConfirmed = json['EmailConfirmed'];
    passwordHash = json['PasswordHash'];
    securityStamp = json['SecurityStamp'];
    phoneNumber = json['PhoneNumber'];
    phoneNumberConfirmed = json['PhoneNumberConfirmed'];
    twoFactorEnabled = json['TwoFactorEnabled'];
    lockoutEndDateUtc = json['LockoutEndDateUtc'];
    lockoutEnabled = json['LockoutEnabled'];
    accessFailedCount = json['AccessFailedCount'];
    userName = json['UserName'];
    roleId = json['role_id'];
    userPic = json['user_pic'];
    mobile = json['mobile'];
    city = json['city'];
    taxId = json['tax_id'];
    address = json['address'];
    zipCode = json['zip_code'];
    expiryDate = json['expiry_date'];
    lastLogin = json['last_login'];
    lastChangePwdDate = json['last_change_pwd_date'];
    isActive = json['is_active'];
    deleted = json['deleted'];
    createdDate = json['created_date'];
    modifiedDate = json['modified_date'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    phone = json['phone'];
    accountant = json['accountant'];
    medicalDoctor = json['medical_doctor'];
    churchMember = json['church_member'];
    missionary = json['missionary'];
    insuranceAgent = json['insurance_agent'];
    hearfrom = json['hearfrom'];
    profileImg = json['profile_img'];
    describeyourself = json['describeyourself'];
    describeotheroption = json['describeotheroption'];
    imageupload = json['imageupload'];
    isPause = json['is_pause'];
    isCancelled = json['is_cancelled'];
    activityLog = json['Activity_Log'];
    aspNetUserClaims = json['AspNetUserClaims'];
    aspNetUserLogins = json['AspNetUserLogins'];
    faqs = json['Faqs'];
    loginPanels = json['LoginPanels'];
    missionTeamMembers = json['MissionTeamMembers'];
    missionUserMasterTemplates = json['MissionUserMasterTemplates'];
    missionUserVerifications = json['MissionUserVerifications'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['Email'] = this.email;
    data['EmailConfirmed'] = this.emailConfirmed;
    data['PasswordHash'] = this.passwordHash;
    data['SecurityStamp'] = this.securityStamp;
    data['PhoneNumber'] = this.phoneNumber;
    data['PhoneNumberConfirmed'] = this.phoneNumberConfirmed;
    data['TwoFactorEnabled'] = this.twoFactorEnabled;
    data['LockoutEndDateUtc'] = this.lockoutEndDateUtc;
    data['LockoutEnabled'] = this.lockoutEnabled;
    data['AccessFailedCount'] = this.accessFailedCount;
    data['UserName'] = this.userName;
    data['role_id'] = this.roleId;
    data['user_pic'] = this.userPic;
    data['mobile'] = this.mobile;
    data['city'] = this.city;
    data['tax_id'] = this.taxId;
    data['address'] = this.address;
    data['zip_code'] = this.zipCode;
    data['expiry_date'] = this.expiryDate;
    data['last_login'] = this.lastLogin;
    data['last_change_pwd_date'] = this.lastChangePwdDate;
    data['is_active'] = this.isActive;
    data['deleted'] = this.deleted;
    data['created_date'] = this.createdDate;
    data['modified_date'] = this.modifiedDate;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['phone'] = this.phone;
    data['accountant'] = this.accountant;
    data['medical_doctor'] = this.medicalDoctor;
    data['church_member'] = this.churchMember;
    data['missionary'] = this.missionary;
    data['insurance_agent'] = this.insuranceAgent;
    data['hearfrom'] = this.hearfrom;
    data['profile_img'] = this.profileImg;
    data['describeyourself'] = this.describeyourself;
    data['describeotheroption'] = this.describeotheroption;
    data['imageupload'] = this.imageupload;
    data['is_pause'] = this.isPause;
    data['is_cancelled'] = this.isCancelled;
    data['Activity_Log'] = this.activityLog;
    data['AspNetUserClaims'] = this.aspNetUserClaims;
    data['AspNetUserLogins'] = this.aspNetUserLogins;
    data['Faqs'] = this.faqs;
    data['LoginPanels'] = this.loginPanels;
    data['MissionTeamMembers'] = this.missionTeamMembers;
    data['MissionUserMasterTemplates'] = this.missionUserMasterTemplates;
    data['MissionUserVerifications'] = this.missionUserVerifications;
    return data;
  }
}