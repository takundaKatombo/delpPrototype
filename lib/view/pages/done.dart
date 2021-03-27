import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/courses.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Submitted extends StatefulWidget {
  @override
  _SubmittedState createState() => new _SubmittedState();
}

class _SubmittedState extends State<Submitted> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;
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

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;
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
              appState.submitted = done;
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
            itemCount: appState.submitted.length,
            itemBuilder: (context, index) {
              final qsn = appState.submitted[index];
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
                                  readOnly: true,
                                  controller: answerController,
                                  maxLines: 8,
                                  onChanged: (val) {},
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                  keyboardType: TextInputType.multiline,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: qsn.answerFreeWritten,
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
                                onPressed: () => flagged.add(qsn),
                                icon: Icon(Icons.flag),
                                label: Text("Flag Question"),
                              ),
                              Spacer(),
                              ElevatedButton.icon(
                                onPressed: () {
                                  qsn.answerFreeWritten = answerController.text;
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
    _handleRadioValueChange5(-1);
    correctScore = 0;
  }

  void validateAnswers() {}
}
