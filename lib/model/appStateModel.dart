import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  List<Courses> registeredCourses = [];
  int tabsInitPosition = 0;
  int selectedCourse;
  var qsnsListGeo = <Question>[];
  var qsnsListMaths = <Question>[];
  var qsnsListEnglish = <Question>[];
  var qsnsListAccounts = <Question>[];

  var submitted = <Question>[];

  void setTabInitPosition(int position) {
    tabsInitPosition = position;
  }

  Future<void> getQsns() async {
    [
      {
        "Status": "unanswered",
        "Question": "First Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Second Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Third Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fourth Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Geo Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "First Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Second Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Third Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Geo FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Eighth Geo FreeWritten Question",
        "type": "FW",
      },
    ].forEach((e) {
      var qsn = new Question();
      qsn.type = e["type"].toString();
      qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
      qsn.question = e["Question"].toString();
      qsn.status = e["Status"].toString();
      qsnsListGeo.add(qsn);
      //return qsn;
    });
    [
      {
        "Status": "unanswered",
        "Question": "First Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Second Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Third Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Eighth Maths FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "First Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": r'What do you think about $L '
            '\''
            r' = {L}{\sqrt{1-\frac{v^2}{c^2}}}$ ?'
            r'  $$\boxed{\rm{A function: } f(x) = \frac{5}{3} \cdot x}$$',
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Third Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fourth Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Maths Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
    ].forEach((e) {
      var qsn = new Question();
      qsn.type = e["type"].toString();
      qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
      qsn.question = e["Question"].toString();
      qsn.status = e["Status"].toString();
      qsnsListMaths.add(qsn);
      //return qsn;
    });
    [
      {
        "Status": "unanswered",
        "Question": "First English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Second English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Third English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fourth English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fifth English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Sixth English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Seventh English Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "First English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Second English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Third English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Fifth English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Sixth English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Seventh English FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Eighth English FreeWritten Question",
        "type": "FW",
      },
    ].forEach((e) {
      var qsn = new Question();
      qsn.type = e["type"].toString();
      qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
      qsn.question = e["Question"].toString();
      qsn.status = e["Status"].toString();
      qsnsListEnglish.add(qsn);
      //return qsn;
    });
    [
      {
        "Status": "unanswered",
        "Question": "First Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Second Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Third Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fourth Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Accounts Multiple Choice Question",
        "type": "MCQ",
        "MultiplehoiceAnswers": [
          {
            "A": "first answer",
            "B": "second answer",
            "C": "third answer",
            "D": "fourth answer",
            "E": "fifth answer"
          }
        ]
      },
      {
        "Status": "unanswered",
        "Question": "First Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Second Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Third Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Fifth Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Sixth Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Seventh Accounts FreeWritten Question",
        "type": "FW",
      },
      {
        "Status": "unanswered",
        "Question": "Eighth Accounts FreeWritten Question",
        "type": "FW",
      },
    ].forEach((e) {
      var qsn = new Question();
      qsn.type = e["type"].toString();
      qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
      qsn.question = e["Question"].toString();
      qsn.status = e["Status"].toString();
      qsnsListAccounts.add(qsn);
      //return qsn;
    });
    // print(qsnsListAccounts);
    // print(qsnsListEnglish);
    // print(qsnsListGeo);
    // print(qsnsListMaths);
  }

  void getRegisteredCourses() async {
    await getQsns();

    MockCourses().getAll().forEach((element) {
      var value = new Courses();
      print('end of mockqsn get');
      value.name = element["Course"];
      value.assignments = selectQsnList(element["Course"]);
      value.exercise = selectQsnList(element["Course"]);
      value.practiseQsn = selectQsnList(element["Course"]);
      value.quiz = selectQsnList(element["Course"]);

      // print(registeredCourses.toString());

      registeredCourses.add(value);
    });
  }

  List<Question> selectQsnList(String course) {
    switch (course) {
      case 'Maths':
        return qsnsListMaths;

        break;
      case 'Accounts':
        return qsnsListAccounts;
        break;
      case 'English':
        return qsnsListEnglish;
        break;
      case 'Geography':
        return qsnsListGeo;
        break;
      default:
        return throw UnimplementedError();
        ;
    }
  }
}
