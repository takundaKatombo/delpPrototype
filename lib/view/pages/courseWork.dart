import 'package:flutter/material.dart';

class CourseWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CourseWork'),
      ),
      body: Center(
        child: Text('Course Work Results Here '),
      ),
    ); //TODO: Show progress from all registered courses in charts
  }
}
