import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _radioValue1 = -1;
  int correctScore = 0;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;

  int _radioValue = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      // switch (_radioValue1) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      // switch (_radioValue2) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      // switch (_radioValue2) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      // switch (_radioValue3) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      // switch (_radioValue4) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      // }
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;

      // switch (_radioValue5) {
      //   case 0:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 1:
      //     Fluttertoast.showToast(msg: 'Try again !',toastLength: Toast.LENGTH_SHORT);
      //     break;
      //   case 2:
      //     Fluttertoast.showToast(msg: 'Correct !',toastLength: Toast.LENGTH_SHORT);
      //     correctScore++;
      //     break;
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
            appBar: AppBar(
              title: new Text(
                'Sample Assignment',
                style: TextStyle(color: Colors.black),
              ),
              centerTitle: true,
              backgroundColor: Colors.yellow[50],
            ),
            body: new Container(
                padding: EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Text(
                          'Answer all questions',
                          style: new TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Divider(height: 5.0, color: Colors.black),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
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
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                              value: 0,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
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
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                            new Text(
                              'Third Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 3,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                            new Text(
                              'Fourth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 4,
                              groupValue: _radioValue1,
                              onChanged: _handleRadioValueChange1,
                            ),
                            new Text(
                              'Fifth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                              value: 0,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            new Text(
                              'First Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 1,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
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
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            new Text(
                              'Fourth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 4,
                              groupValue: _radioValue2,
                              onChanged: _handleRadioValueChange2,
                            ),
                            new Text(
                              'Fifth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                              value: 0,
                              groupValue: _radioValue3,
                              onChanged: _handleRadioValueChange3,
                            ),
                            new Text(
                              'First Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 1,
                              groupValue: _radioValue3,
                              onChanged: _handleRadioValueChange3,
                            ),
                            new Text(
                              'Second Answer',
                              style: new TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            new Radio(
                              value: 2,
                              groupValue: _radioValue3,
                              onChanged: _handleRadioValueChange3,
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
                              groupValue: _radioValue3,
                              onChanged: _handleRadioValueChange3,
                            ),
                            new Text(
                              'Fifth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                              value: 0,
                              groupValue: _radioValue4,
                              onChanged: _handleRadioValueChange4,
                            ),
                            new Text(
                              'First Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 1,
                              groupValue: _radioValue4,
                              onChanged: _handleRadioValueChange4,
                            ),
                            new Text(
                              'Second Answer',
                              style: new TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            new Radio(
                              value: 2,
                              groupValue: _radioValue4,
                              onChanged: _handleRadioValueChange4,
                            ),
                            new Text(
                              'Third Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 3,
                              groupValue: _radioValue4,
                              onChanged: _handleRadioValueChange4,
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
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Text(
                          'Multiple Choice Qsn Sample :',
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Radio(
                              value: 0,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            new Text(
                              'First Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 1,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            new Text(
                              'Second Answer',
                              style: new TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            new Radio(
                              value: 2,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            new Text(
                              'Third Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 3,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            new Text(
                              'Fourth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                            new Radio(
                              value: 4,
                              groupValue: _radioValue5,
                              onChanged: _handleRadioValueChange5,
                            ),
                            new Text(
                              'Fifth Answer',
                              style: new TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        new Divider(
                          height: 5.0,
                          color: Colors.black,
                        ),
                        new Padding(
                          padding: new EdgeInsets.all(8.0),
                        ),
                        new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(
                                'Free written Qsn Sample :',
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "write answer here",
                                  ),
                                  maxLines: null,
                                ),
                              ),
                              new Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                              new Text(
                                'Free written Qsn Sample :',
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "write answer here",
                                  ),
                                  maxLines: null,
                                ),
                              ),
                              new Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                              new Text(
                                'Free written Qsn Sample :',
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "write answer here",
                                  ),
                                  maxLines: null,
                                ),
                              ),
                              new Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                              new Text(
                                'Free written Qsn Sample :',
                                style: new TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                              Container(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "write answer here",
                                  ),
                                  maxLines: null,
                                ),
                              ),
                              new Divider(
                                height: 5.0,
                                color: Colors.black,
                              ),
                              new Padding(
                                padding: new EdgeInsets.all(8.0),
                              ),
                            ]),
                        Row(
                          children: [
                            RaisedButton(
                              color: Colors.yellow[50],
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Quit'),
                            ),
                            RaisedButton(
                              color: Colors.yellow[50],
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Submit'),
                            ),
                            RaisedButton(
                              color: Colors.yellow[50],
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Save'),
                            )
                          ],
                        )
                      ]),
                ))));
  }

  void resetSelection() {
    _handleRadioValueChange1(-1);
    _handleRadioValueChange2(-1);
    _handleRadioValueChange3(-1);
    _handleRadioValueChange4(-1);
    _handleRadioValueChange5(-1);
    correctScore = 0;
  }

  void validateAnswers() {
    // if (_radioValue1 == -1 && _radioValue2 == -1 &&
    //     _radioValue3 == -1 && _radioValue4 == -1 &&
    //     _radioValue5 == -1) {
    //   Fluttertoast.showToast(msg: 'Please select atleast one answer',
    //       toastLength: Toast.LENGTH_SHORT);
    // } else {
    //   Fluttertoast.showToast(
    //       msg: 'Your total score is: $correctScore out of 5',
    //       toastLength: Toast.LENGTH_LONG);
    // }
  }
}
