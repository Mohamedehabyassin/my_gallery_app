import 'package:flutter/material.dart';
import 'package:my_gallery_app/shared/network/request/login_request.dart';

class LoginProvider extends ChangeNotifier {
  bool isLogin = false;
  String? userToken;
  final _dataRequest = LoginRequest();

  void login(String username, String password) {
    _dataRequest.userLogin(username, password).then((value) {
      if (value?.token != null){
        isLogin = true;
        userToken = value?.token;
        notifyListeners();
      }
    });
  }
}
