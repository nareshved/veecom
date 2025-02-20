import 'dart:convert';
import 'dart:io';
import 'dart:developer';
import '../api_urls/api_urls.dart';
import 'app_exception.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  Future<dynamic> getApi(String url, {Map<String, String>? header}) async {
    var uri = Uri.parse(url);

    try {
      var response = await http.get(uri,
          headers: header ?? {"Authorization": ApiUrls.loginUser});

      return returnDataResponse(response);
    } on SocketException {
      throw FetchDataException(body: "Internet Not Connected");
    }
  }

  Future<dynamic> postApi(
      {required String userName,
      required String userPassword,
      required String userEmail,
      required String apiUrl}) async {
    var uri = Uri.parse(apiUrl);

    try {
      var response = await http.post(uri, body: {
        "username": userName,
        "password": userPassword,
        "email": userEmail
      });

      log("api hit completed naresh");

      return returnDataResponse(response);
    } catch (e) {
      log("error login post api not hit check again ${e.toString()}");
    }
  }

  dynamic returnDataResponse(http.Response res) {
    switch (res.statusCode) {
      case 200:
        var actData = res.body;
        var mData = jsonDecode(actData);
        return mData;

      case 400:
        BadRequestException(body: res.body.toString());
      case 401:
      case 403:
        UnAuthorizedException(body: res.body.toString());

      case 500:
      default:
        FetchDataException(
            body: "error in server isssue with statusCode : ${res.statusCode}");
    }
  }
}
