import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/courses.dart';
import 'package:flutter/material.dart';
import 'package:katex_flutter/katex_flutter.dart';
import 'package:provider/provider.dart';

class Assignment extends StatefulWidget {
  @override
  _AssignmentState createState() => new _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  List<Question> flagged = [];
  List<Question> done = [];

  int _radioValue = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;
    });
  }

  void _showFlagged(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Center(
          child: Card(
            child: Container(
              padding: EdgeInsets.all(16),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.7,
              child: ListView.builder(
                itemCount: flagged.length,
                itemBuilder: (context, index) {
                  final qsn = flagged[index];
                  if (qsn.type == 'FW') {
                    var answerController = TextEditingController();
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Card(
                        child: Column(
                          children: [
                            Text((index + 1).toString() + ' : ' + qsn.question),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                    child: TextField(
                                      controller: answerController,
                                      maxLines: 8,
                                      onChanged: (val) {},
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                      keyboardType: TextInputType.multiline,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: '',
                                      ),
                                    ))),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_previous),
                                    label: Text("Previous Question"),
                                  ),
                                  Spacer(),
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      qsn.answerFreeWritten =
                                          answerController.text;
                                      done.add(qsn);
                                    },
                                    icon: Icon(Icons.skip_next),
                                    label: Text("Next Question"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                          children: [
                            Text((index + 1).toString() + ' : ' + qsn.question),
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Wrap(
                                  children: [
                                    new Radio(
                                      value: 0,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    new Text(
                                      'First Answer',
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                    new Radio(
                                      value: 1,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    new Text(
                                      'Second Answer',
                                      style: new TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    new Radio(
                                      value: 2,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    new Text(
                                      'Third Answer',
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                    new Radio(
                                      value: 3,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    new Text(
                                      'Fourth Answer',
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                    new Radio(
                                      value: 4,
                                      groupValue: _radioValue,
                                      onChanged: _handleRadioValueChange,
                                    ),
                                    new Text(
                                      'Fifth Answer',
                                      style: new TextStyle(fontSize: 16.0),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_previous),
                                    label: Text("Previous Question"),
                                  ),
                                  Spacer(),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.skip_next),
                                    label: Text("Next Question"),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appState.registeredCourses[appState.selectedCourse].name,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.flag),
            onPressed: () {
              print(flagged);
              _showFlagged(context);
            },
            tooltip: 'View flagged',
          ),
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
              print(done);
              done.forEach((element) {
                appState.submitted.add(element);
              });
              Navigator.pop(context);
            },
            tooltip: 'Submit',
          )
        ],
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.7,
          child: ListView.builder(
            itemCount: appState
                .registeredCourses[appState.selectedCourse].assignments.length,
            itemBuilder: (context, index) {
              final qsn = appState.registeredCourses[appState.selectedCourse]
                  .assignments[index];
              if (qsn.type == 'FW') {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Card(
                    child: Column(
                      children: [
                        Container(
                            child: Builder(
                          builder: (context) => KaTeX(
                            laTeXCode: Text(
                              (index + 1).toString() + ' : ' + qsn.question,
                            ),
                          ),
                        )),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: TextField(
                                  maxLines: 8,
                                  onChanged: (val) {
                                    appState
                                        .registeredCourses[
                                            appState.selectedCourse]
                                        .assignments[index]
                                        .answerFreeWritten = val;
                                    done.add(qsn);
                                  },
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: appState
                                          .registeredCourses[
                                              appState.selectedCourse]
                                          .assignments[index]
                                          .answerFreeWritten),
                                ))),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous),
                                label: Text("Previous Question"),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                onPressed: () => flagged.add(qsn),
                                icon: Icon(Icons.flag),
                                label: Text("Flag Question"),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                                label: Text("Next Question"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              } else {
                return Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      children: [
                        Container(
                            child: Builder(
                          builder: (context) => KaTeX(
                            laTeXCode: Text(
                              (index + 1).toString() + ' : ' + qsn.question,
                            ),
                          ),
                        )),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Wrap(
                              children: [
                                new Radio(
                                  value: 0,
                                  groupValue: _radioValue,
                                  onChanged: _handleRadioValueChange,
                                ),
                                new Text(
                                  'First Answer',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                                new Radio(
                                  value: 1,
                                  groupValue: _radioValue1,
                                  onChanged: _handleRadioValueChange1,
                                ),
                                new Text(
                                  'Second Answer',
                                  style: new TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                new Radio(
                                  value: 2,
                                  groupValue: _radioValue2,
                                  onChanged: _handleRadioValueChange2,
                                ),
                                new Text(
                                  'Third Answer',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                                new Radio(
                                  value: 3,
                                  groupValue: _radioValue3,
                                  onChanged: _handleRadioValueChange3,
                                ),
                                new Text(
                                  'Fourth Answer',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                                new Radio(
                                  value: 4,
                                  groupValue: _radioValue4,
                                  onChanged: _handleRadioValueChange4,
                                ),
                                new Text(
                                  'Fifth Answer',
                                  style: new TextStyle(fontSize: 16.0),
                                ),
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.skip_previous),
                                label: Text("Previous Question"),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                onPressed: () {
                                  flagged.add(qsn);
                                },
                                icon: Icon(Icons.flag),
                                label: Text("Flag Question"),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.skip_next),
                                label: Text("Next Question"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    _handleRadioValueChange2(-1);
    _handleRadioValueChange3(-1);
    _handleRadioValueChange4(-1);
    _handleRadioValueChange(-1);
    correctScore = 0;
  }

  void validateAnswers() {}
}
//TODO: Get answers for multiple choice qsns (Limit num of Questions on page to 10 and have next and previous buttons to move through) then have separate controllers for each question answers ie textcontroller for freewritten questions and have the separate radio buttons values for the multiple choice questions
//TODO: Finish Flagged qsns functionality(edit answer and move qsn to done )
//TODO:filter unanswered qsns
//TODO: Submit finished
//TODO: Quit and Save
//TODO: Editor for longer free written questions eg for essays in  literature languages
