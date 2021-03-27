import 'package:delp/model/loginModel.dart';
import 'package:delp/services/locator.dart';

class LoginController {
  static Future<bool> simulateNetworkCall() async {
    return await Future.delayed(Duration(seconds: 4), () {
      return true;
    });
  }
}
