import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  List<Courses> registeredCourses = [];
  int tabsInitPosition = 0;
  int selectedCourse;
  var qsnsList = <Question>[];
  var submitted = <Question>[];

  void setTabInitPosition(int position) {
    tabsInitPosition = position;
  }

  Future<void> getQsns() async {
    MockQuestions().getAll().forEach((e) {
      var qsn = new Question();
      qsn.type = e["type"].toString();
      qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
      qsn.question = e["Question"].toString();
      qsn.status = e["Status"].toString();
      qsnsList.add(qsn);
      //return qsn;
    });
  }

  void getRegisteredCourses() async {
    await getQsns();

    MockCourses().getAll().forEach((element) {
      var value = new Courses();
      print('end of mockqsn get');
      value.name = element["Course"].toString();
      value.assignments = qsnsList;
      value.exercise = qsnsList;
      value.practiseQsn = qsnsList;
      value.quiz = qsnsList;
      print(qsnsList.length);
      print(qsnsList.toString());
      // print(registeredCourses.toString());

      registeredCourses.add(value);
    });
  }
}
