import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_gallery_app/model/user_model.dart';

class LoginRequest {
  final url = "https://technichal.prominaagency.com/api/auth/login";

  Future<UserModel?> userLogin(String username, String password) async {
    final response = await http.post(Uri.parse(url),
        body: ({'email': username, 'password': password}));
    if (response.statusCode == 200) {
      var responseList = json.decode(response.body);
      UserModel user = UserModel.fromJson(responseList);
      return user;
    } else {
      return null;
    }
  }
}
