import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:newproject/screens/login_page/login.dart';
import 'package:newproject/widgets/custom_snackBar.dart';
import '../../api_constants/api_constants.dart';

class LoginApiServices with ChangeNotifier {
  String _authToken = "";

  LoginApiServices._internal();
  factory LoginApiServices() {
    return _instance;
  }

  static final LoginApiServices _instance = LoginApiServices._internal();
  Map<String, String> _getRequestHeaders() {
    return {
      "Accept": "Application/json",
      'Authorization': 'Bearer $_authToken'
    };
  }

//  http get request
  Future<http.Response> _get(String endPoint, Map<String, String> header) {
    String url = APIConstants.API_BASE_URL + endPoint;
    Uri uri = Uri.parse(url);
    return http.get(uri, headers: header);
  }

  Future<http.Response> _post(
      String endPoint, Map<String, String> header, Map<String, dynamic> body) {
    String url = APIConstants.API_BASE_URL + endPoint;
    //  print post
    Uri uri = Uri.parse(url);
    return http.post(uri, headers: header, body: body);
  }

//  convert to json
// ignore: unused_element

  Map<String, dynamic> _convertJsonToMap(String response) {
    return json.decode(response);
  }

//getter for token
  Future<String?> getToken() async {
    return _authToken;
  }

  //  Login Credential to API
  Future Login(email, password, BuildContext context) async {
    http.Response response = await _post(
        "/login?email$email&password=$password", _getRequestHeaders(), {});
    // Response code
    if (response.statusCode == 200) {
      var jsonList = json.decode(response.body);
      print(jsonList);
      _authToken = jsonList['data']['token'];
    } else {
      CustomSnackBar.buildSuccessSnackbar(context, "Email or Password wrong");
    }
  }

//post Register
  Future Signup(name, email, password, confirmPassword, phone,
      BuildContext context) async {
    http.Response response = await _post(
        "/register?name=$name&email=$email&password=$password&confirm_password$confirmPassword&phone=$phone",
        _getRequestHeaders(), {});
    //  response code
    if (response.statusCode == 200) {
      var jsonList = json.decode(response.body);
      print(jsonList);
    } else {
      throw Exception('Failed post for login');
    }
  }
}
