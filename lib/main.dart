import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/appStateModel.dart';
import 'services/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        builder: (context, snapshot) {
          var appState = Provider.of<AppState>(context);
          appState.getRegisteredCourses();
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                // primarySwatch: Colors.yellow[50],
                ),
            initialRoute: '/home',
            onGenerateRoute: (settings) =>
                RouteGenerator.generateRoute(settings),
          );
        });
  }
}
