class LoginUserModel {
  String userEmail, userName, userPassword;

  LoginUserModel(
      {required this.userEmail,
      required this.userName,
      required this.userPassword});

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return LoginUserModel(
        userEmail: json["userEmail"],
        userName: json["userName"],
        userPassword: json["userPassword"]);
  }
}
