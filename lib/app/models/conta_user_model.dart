class ContaUserModel {
  int? codUser;
  int? codUserType;
  String? name;
  String? email;
  String? password;
  String? nick;
  String? publicProfile;
  Null? credential;
  Null? filePicture;
  String? urlProfile;
  Null? birthDate;
  String? birthString;
  String? city;
  String? state;
  String? country;
  int? totalFriends;
  int? totalFollowings;
  bool? isCertificate;
  bool? isGreenCertificate;

  ContaUserModel(
      {this.codUser,
        this.codUserType,
        this.name,
        this.email,
        this.password,
        this.nick,
        this.publicProfile,
        this.credential,
        this.filePicture,
        this.urlProfile,
        this.birthDate,
        this.birthString,
        this.city,
        this.state,
        this.country,
        this.totalFriends,
        this.totalFollowings,
        this.isCertificate,
        this.isGreenCertificate});


  Map<String, dynamic> toJson() {
    return {
      'CodUser': codUser,
      'CodUserType': codUserType,
      'Name': name,
      'Email': email,
      'Password': password,
      'Nick': nick,
      'PublicProfile': publicProfile,
      'Credential': credential,
      'FilePicture': filePicture,
      'UrlProfile': urlProfile,
      'BirthDate': birthDate,
      'birthString': birthString,
      'City': city,
      'State': state,
      'Country': country,
      'TotalFriends': totalFriends,
      'TotalFollowings': totalFollowings,
      'IsCertificate': isCertificate,
      'IsGreenCertificate': isGreenCertificate,
    };
  }


  factory ContaUserModel.fromJson(Map<String, dynamic> map) {
    return ContaUserModel(
      codUser: map['CodUser'],
      codUserType: map['CodUserType'],
      name: map['Name'],
      email: map['Email'],
      password: map['Password'],
      nick: map['nick'],
      publicProfile: map['PublicProfile'],
      credential: map['Credential'],
      filePicture: map['FilePicture'],
      urlProfile: map['UrlProfile'],
      birthDate: map['BirthDate'],
      birthString: map['BirthString'],
      city: map['City'],
      state: map['State'],
      country: map['Country'],
      totalFriends: map['TotalFriends'],
      totalFollowings: map['TotalFollowings'],
      isCertificate: map['IsCertificate'],
      isGreenCertificate: map['IsGreenCertificate'],
    );
  }

  @override
  String toString() {
    return 'ContaUserModel{codUser: $codUser, codUserType: $codUserType, name: $name, email: $email, password: $password, nick: $nick, publicProfile: $publicProfile, credential: $credential, filePicture: $filePicture, urlProfile: $urlProfile, birthDate: $birthDate, birthString: $birthString, city: $city, state: $state, country: $country, totalFriends: $totalFriends, totalFollowings: $totalFollowings, isCertificate: $isCertificate, isGreenCertificate: $isGreenCertificate}';
  }
}