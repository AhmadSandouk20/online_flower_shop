class User {
  // late String id;
  late String email;
  late int phoneNumber;
  late String userName;
  late String password;

  User({
    // required id;
    required email,
    required userName,
    required phoneNumber,
    required password,
  });

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    userName = json['userName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'userName': userName
    };

    return data;
  }
}
