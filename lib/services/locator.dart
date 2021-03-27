import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/loginModel.dart';
import 'package:delp/model/todoModel.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton(LoginModel());
  locator.registerSingleton(AppState());
  locator.registerSingleton(Todo());
}
