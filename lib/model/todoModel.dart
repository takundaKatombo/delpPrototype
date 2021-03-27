import 'package:flutter/foundation.dart';

class Todo extends ChangeNotifier {
  List<String> todoList = ["Todo 1", "Todo 2"];

  void addTodo(String todo) {
    todoList.add(todo);
    notifyListeners();
  }
}
