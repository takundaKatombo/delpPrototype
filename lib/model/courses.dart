class Courses {
  String name = "";
  // String nextLesson = "";
  // var notes;
  List<Question> assignments = [];
  List<Question> exercise = [];
  List<Question> quiz = [];
  List<Question> practiseQsn = [];
  @override
  String toString() {
    print(name);
    print(assignments);
    print("assignments");
    print(exercise);
    print("exercise");
    print(quiz);
    print("quiz");
    print(practiseQsn);
    print("prectise qsn");

    return super.toString();
  }
}

class Question {
  String status = "";
  String type = "";
  String question = "";
  String answerFreeWritten = "";
  Map<String, String> answerMultipleChoice;
  List<Map<String, String>> answersMultipleChoice = [];
  @override
  String toString() {
    // TODO: implement toString
    print(status);
    print("status");
    print(type);
    print("type");
    print(question);
    print("question");
    print(answersMultipleChoice.toString());

    return super.toString();
  }
}
