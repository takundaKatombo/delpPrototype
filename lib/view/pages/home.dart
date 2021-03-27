import 'package:delp/controller/loginController.dart';
import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
import 'package:delp/model/todoModel.dart';
import 'package:delp/view/widgets/course_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  final String title = 'DELP Demo';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var future = LoginController.simulateNetworkCall();
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Container(
                child: CircularProgressIndicator(),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.05,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else
            return Home(widget: widget, appState: appState);
        });
  }

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return CircularProgressIndicator();
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key key,
    @required this.widget,
    @required this.appState,
  }) : super(key: key);

  final MyHomePage widget;
  final AppState appState;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _selectedDate;

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          backgroundColor: Colors.yellow[50],
          content: new Text("Add Lesson To Calender"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialognew
            FlatButton(
              child: new Text(
                "Add",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text(
                "Close",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showNotifications(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.175,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Notification 1'),
                ),
                ListTile(
                  title: Text('Notification 2'),
                ),
                ListTile(
                  title: Text('Notification 3'),
                ),
                ListTile(
                  title: Text('Notification 4'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showProfile(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Container(
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.175,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Coursework'),
                ),
                ListTile(
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var todoList = Provider.of<Todo>(context);

    return Scaffold(
      //remove one of the scaffolds this and login page
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //leading: Icon( color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow[50],
        title: Text(
          widget.widget.title,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              hoverColor: Colors.black26,
              tooltip: 'Calender',
              icon: Icon(
                Icons.calendar_view_day_rounded,
              ),
              onPressed: () async {
                final DateTimeRange picked = await showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2010),
                    lastDate: DateTime(2021),
                    builder: (context, child) {
                      return Center(
                        child: SizedBox(
                          height: 500,
                          width: 400,
                          child: child,
                        ),
                      );
                    });
                if (picked != null) {
                  _selectedDate = picked as DateTime;
                }
              }),
          IconButton(
            tooltip: 'Notifications',
            icon: Icon(
              Icons.add_alert,
            ),
            onPressed: () => _showNotifications(context),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: Colors.black,
              icon: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              tooltip: 'My Profile',
              onPressed: () => _showProfile(context),
            ),
          )
        ],
      ),

      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.3,
                    //color: Colors.black,
                    child: Card(
                      color: Colors.yellow[50],
                      shadowColor: Colors.black54,
                      elevation: 0,
                      child: Row(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: RaisedButton(
                                color: Colors.black,
                                onPressed: () {
                                  _showDialog(context);
                                },
                                child: Center(
                                    child: Text(
                                  'Next Lesson on 1 Feb',
                                  style: TextStyle(color: Colors.yellow[50]),
                                )),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            //margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(8.0),
                              color: Colors.black,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2.0,
                                  spreadRadius: 0.0,
                                  offset: Offset(2.0,
                                      2.0), // shadow direction: bottom right
                                )
                              ],
                            ),
                            //color: Colors.green,
                            width: MediaQuery.of(context).size.width * 0.35 + 1,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    // width: MediaQuery.of(context)
                                    //         .size
                                    //         .width *
                                    //     0.175,
                                    child: Center(
                                        child: Text(
                                      widget.appState.registeredCourses[index]
                                          .name,
                                      style:
                                          TextStyle(color: Colors.yellow[50]),
                                    ))),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.yellow[50],
                                      ),

                                      //color: Colors.amberAccent,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width *
                                          0.175,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text('Notes'),
                                            trailing: Icon(
                                              Icons.circle,
                                              color: Colors.green,
                                            ),
                                            hoverColor: Colors.blue,
                                            focusColor: Colors.blue,
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(0);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          ),
                                          ListTile(
                                            title: Text('Other Resources'),
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(1);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          ),
                                          ListTile(
                                            title: Text('Practice questions'),
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(2);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Divider(),
                                    Container(
                                      width: 1,
                                      color: Colors.black,
                                    ),
                                    //Spacer(),
                                    Container(
                                      // decoration: BoxDecoration(
                                      //     //color: Colors.lightBlueAccent,
                                      //     borderRadius:
                                      //         BorderRadius.circular(10),
                                      //     border: Border.all(
                                      //         color: Colors.blue)),

                                      color: Colors.yellow[50],
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      width: MediaQuery.of(context).size.width *
                                          0.175,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            hoverColor: Colors.black12,
                                            // onTap: ,
                                            title: Text('Assignments'),
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(3);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          ),
                                          ListTile(
                                            title: Text('Quiz'),
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(5);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          ),
                                          ListTile(
                                            title: Text('Excercises'),
                                            onTap: () {
                                              widget.appState
                                                  .setTabInitPosition(4);
                                              widget.appState.selectedCourse =
                                                  index;
                                              Navigator.pushNamed(
                                                context,
                                                '/course',
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            children: [
              Consumer<Todo>(
                builder: (context, value, child) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Stack(
                        children: [
                          Card(
                            elevation: 4,
                            color: Colors.yellow[50],
                            child: new ListView.builder(
                              reverse: true,
                              itemCount: value.todoList.length,
                              itemBuilder: (BuildContext ctxt, int index) {
                                return ListTile(
                                  title: new Text(
                                    value.todoList[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: FloatingActionButton(
                                onPressed: () {
                                  todoList.addTodo(
                                      "Todo ${todoList.todoList.length + 1}");
                                },
                                child: Icon(Icons.add),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Card(
                      elevation: 4,
                      color: Colors.yellow[50],
                      child: Placeholder(),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
