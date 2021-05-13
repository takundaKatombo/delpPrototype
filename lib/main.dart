import 'package:delp/model/todoModel.dart';
import 'package:delp/services/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/appStateModel.dart';
import 'services/route_generator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

//TODO: get separate assignments, exercise, quiz etc for various courses
//TODO: Neumorphic design ?
//TODO: add persistent storage(done for todo list)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AppState>(create: (_) => AppState()),
        ],
        builder: (context, snapshot) {
          var appState = Provider.of<AppState>(context);
          appState.getRegisteredCourses();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                // primarySwatch: Colors.yellow[50],
                ),
            initialRoute: '/login',
            onGenerateRoute: (settings) =>
                RouteGenerator.generateRoute(settings),
          );
        });
  }
}
