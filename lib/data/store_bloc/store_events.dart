abstract class StoreEvents {}

class LoginUserEvents extends StoreEvents {
  // String loginApiUrl;
  String userName, userEmail, userPassword;

  LoginUserEvents(
      {required this.userEmail,
      required this.userName,
      required this.userPassword});
}
