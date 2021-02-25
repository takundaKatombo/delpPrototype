import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  List<Courses> registeredCourses = [];
  int tabsInitPosition = 0;
  int selectedCourse;

  void setTabInitPosition(int position) {
    tabsInitPosition = position;
  }

  void getRegisteredCourses() async {
    MockCourses().getAll().forEach((element) {
      var value = new Courses();
      var qsn = new Question();
      var qsnsList = <Question>[];
      MockQuestions().getAll().forEach((e) {
        qsn.type = e["type"].toString();
        qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
        qsn.question = e["Question"].toString();
        qsn.status = e["Status"].toString();
        qsnsList.add(qsn);
        print(qsn.toString());
      });
      value.name = element["Course"].toString();
      value.assignments = qsnsList;
      value.exercise = qsnsList;
      value.practiseQsn = qsnsList;
      value.quiz = qsnsList;

      // print(registeredCourses.toString());

      registeredCourses.add(value);
    });
  }
}
