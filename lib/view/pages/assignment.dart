import 'package:delp/model/appStateModel.dart';
import 'package:flutter/material.dart';
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
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appState.registeredCourses[appState.selectedCourse].name,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.flag),
            onPressed: () {},
            tooltip: 'View flagged',
          ),
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {
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
            itemCount: 14,
            itemBuilder: (context, index) {
              final qsn = appState.registeredCourses[appState.selectedCourse]
                  .assignments[index];
              if (qsn.type == 'FW') {
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
                                onPressed: () {},
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
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Column(
                      children: [
                        Text((index + 1).toString() + ' : ' + qsn.question),
                        Container(
                            height: MediaQuery.of(context).size.height * 0.3,
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
                              ElevatedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.flag),
                                label: Text("Flag Question"),
                              ),
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

    // new MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: new Scaffold(
    //         appBar: AppBar(
    //           title: new Text(
    //             'Sample Assignment',
    //             style: TextStyle(color: Colors.black),
    //           ),
    //           centerTitle: true,
    //           backgroundColor: Colors.yellow[50],
    //         ),
    //         body: new Container(
    //             padding: EdgeInsets.all(8.0),
    //             child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: <Widget>[
    //                   new Text(
    //                     'Answer all questions',
    //                     style: new TextStyle(
    //                         fontSize: 20.0, fontWeight: FontWeight.bold),
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Divider(height: 5.0, color: Colors.black),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue,
    //                         onChanged: _handleRadioValueChange,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue,
    //                         onChanged: _handleRadioValueChange,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue,
    //                         onChanged: _handleRadioValueChange,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue,
    //                         onChanged: _handleRadioValueChange,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue,
    //                         onChanged: _handleRadioValueChange,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue1,
    //                         onChanged: _handleRadioValueChange1,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue1,
    //                         onChanged: _handleRadioValueChange1,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue1,
    //                         onChanged: _handleRadioValueChange1,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue1,
    //                         onChanged: _handleRadioValueChange1,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue1,
    //                         onChanged: _handleRadioValueChange1,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue2,
    //                         onChanged: _handleRadioValueChange2,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue2,
    //                         onChanged: _handleRadioValueChange2,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue2,
    //                         onChanged: _handleRadioValueChange2,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue2,
    //                         onChanged: _handleRadioValueChange2,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue2,
    //                         onChanged: _handleRadioValueChange2,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue3,
    //                         onChanged: _handleRadioValueChange3,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue3,
    //                         onChanged: _handleRadioValueChange3,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue3,
    //                         onChanged: _handleRadioValueChange3,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue3,
    //                         onChanged: _handleRadioValueChange3,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue3,
    //                         onChanged: _handleRadioValueChange3,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue4,
    //                         onChanged: _handleRadioValueChange4,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue4,
    //                         onChanged: _handleRadioValueChange4,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue4,
    //                         onChanged: _handleRadioValueChange4,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue4,
    //                         onChanged: _handleRadioValueChange4,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue4,
    //                         onChanged: _handleRadioValueChange4,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Text(
    //                     'Multiple Choice Qsn Sample :',
    //                     style: new TextStyle(
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 18.0,
    //                     ),
    //                   ),
    //                   new Row(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     children: <Widget>[
    //                       new Radio(
    //                         value: 0,
    //                         groupValue: _radioValue5,
    //                         onChanged: _handleRadioValueChange5,
    //                       ),
    //                       new Text(
    //                         'First Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 1,
    //                         groupValue: _radioValue5,
    //                         onChanged: _handleRadioValueChange5,
    //                       ),
    //                       new Text(
    //                         'Second Answer',
    //                         style: new TextStyle(
    //                           fontSize: 16.0,
    //                         ),
    //                       ),
    //                       new Radio(
    //                         value: 2,
    //                         groupValue: _radioValue5,
    //                         onChanged: _handleRadioValueChange5,
    //                       ),
    //                       new Text(
    //                         'Third Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 3,
    //                         groupValue: _radioValue5,
    //                         onChanged: _handleRadioValueChange5,
    //                       ),
    //                       new Text(
    //                         'Fourth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                       new Radio(
    //                         value: 4,
    //                         groupValue: _radioValue5,
    //                         onChanged: _handleRadioValueChange5,
    //                       ),
    //                       new Text(
    //                         'Fifth Answer',
    //                         style: new TextStyle(fontSize: 16.0),
    //                       ),
    //                     ],
    //                   ),
    //                   new Divider(
    //                     height: 5.0,
    //                     color: Colors.black,
    //                   ),
    //                   new Padding(
    //                     padding: new EdgeInsets.all(8.0),
    //                   ),
    //                   new Column(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: <Widget>[
    //                         new Text(
    //                           'Free written Qsn Sample :',
    //                           style: new TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 18.0,
    //                           ),
    //                         ),
    //                         Container(
    //                           child: TextField(
    //                             decoration: InputDecoration(
    //                               hintText: "write answer here",
    //                             ),
    //                             maxLines: null,
    //                           ),
    //                         ),
    //                         new Divider(
    //                           height: 5.0,
    //                           color: Colors.black,
    //                         ),
    //                         new Text(
    //                           'Free written Qsn Sample :',
    //                           style: new TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 18.0,
    //                           ),
    //                         ),
    //                         Container(
    //                           child: TextField(
    //                             decoration: InputDecoration(
    //                               hintText: "write answer here",
    //                             ),
    //                             maxLines: null,
    //                           ),
    //                         ),
    //                         new Divider(
    //                           height: 5.0,
    //                           color: Colors.black,
    //                         ),
    //                         new Text(
    //                           'Free written Qsn Sample :',
    //                           style: new TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 18.0,
    //                           ),
    //                         ),
    //                         Container(
    //                           child: TextField(
    //                             expands: true,
    //                             decoration: InputDecoration(
    //                               hintText: "write answer here",
    //                             ),
    //                             maxLines: null,
    //                           ),
    //                         ),
    //                         new Divider(
    //                           height: 5.0,
    //                           color: Colors.black,
    //                         ),
    //                         new Text(
    //                           'Free written Qsn Sample :',
    //                           style: new TextStyle(
    //                             fontWeight: FontWeight.bold,
    //                             fontSize: 18.0,
    //                           ),
    //                         ),
    //                         Container(
    //                           child: TextField(
    //                             decoration: InputDecoration(
    //                               hintText: "write answer here",
    //                             ),
    //                             maxLines: null,
    //                           ),
    //                         ),
    //                         new Divider(
    //                           height: 5.0,
    //                           color: Colors.black,
    //                         ),
    //                         new Padding(
    //                           padding: new EdgeInsets.all(8.0),
    //                         ),
    //                       ]),
    //                   Row(
    //                     children: [
    //                       RaisedButton(
    //                         color: Colors.yellow[50],
    //                         onPressed: () {
    //                           Navigator.pop(context);
    //                         },
    //                         child: Text('Quit'),
    //                       ),
    //                       RaisedButton(
    //                         color: Colors.yellow[50],
    //                         onPressed: () {
    //                           Navigator.pop(context);
    //                         },
    //                         child: Text('Submit'),
    //                       ),
    //                       RaisedButton(
    //                         color: Colors.yellow[50],
    //                         onPressed: () {
    //                           Navigator.pop(context);
    //                         },
    //                         child: Text('Save'),
    //                       )
    //                     ],
    //                   )
    //                 ]))));
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
