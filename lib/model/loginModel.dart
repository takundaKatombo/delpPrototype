import 'package:flutter/material.dart';

class LoginModel extends ChangeNotifier {
  bool _loginStatus = false;

  bool get loginStatus => _loginStatus;

  set loginStatus(bool status) {
    _loginStatus = status;
    notifyListeners();
  }
}
