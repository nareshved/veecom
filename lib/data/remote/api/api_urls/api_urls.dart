// api urls

class ApiUrls {
  // base url
  static const String baseUrl = "https://fakestoreapi.com/";

  // product url
  static const String productUrl = "${baseUrl}products";

  // all categories
  static const String categoriesUrl = "$baseUrl${productUrl}categories";

  // get all carts
  static const String allcartsUrl = "${baseUrl}carts";

  // get all users
  static const String getAllUsers = "${baseUrl}users";

  // login user
  static const String loginUser = "${baseUrl}auth/login";
}
