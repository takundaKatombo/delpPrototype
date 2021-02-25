import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
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
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      //remove one of the scaffolds this and login page
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        //leading: Icon( color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow[50],
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            hoverColor: Colors.black26,
            tooltip: 'Search',
            icon: Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Notifications',
            icon: Icon(
              Icons.add_alert,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Messages',
            icon: Icon(
              Icons.message_rounded,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              color: Colors.black,
              icon: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              tooltip: 'My Profile',
              onPressed: () {},
            ),
          )
        ],
      ),
      drawer: Drawer(
        elevation: 30,
        child: Container(
          color: Colors.yellow[50],
          child: Column(
            children: [
              ListTile(
                hoverColor: Colors.black,
                tileColor: Colors.black54,
                title: Text(
                  'Home',
                  style: TextStyle(color: Colors.yellow[50]),
                ),
                trailing: Icon(Icons.home, color: Colors.yellow[50]),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                  );
                },
              ),
              // Divider(),
              ListTile(
                  tileColor: Colors.black54,
                  title: Text(
                    'Coursework',
                    style: TextStyle(color: Colors.yellow[50]),
                  ),
                  trailing: Icon(Icons.assessment, color: Colors.yellow[50])),
              ListTile(
                tileColor: Colors.black54,
                title: Text(
                  'Calender',
                  style: TextStyle(color: Colors.yellow[50]),
                ),
                trailing: Icon(Icons.calendar_today, color: Colors.yellow[50]),
              ),
              Container(
                color: Colors.black54,
                child: ExpansionTile(
                  backgroundColor: Colors.black54,
                  title: Text(
                    'My Courses',
                    style: TextStyle(color: Colors.yellow[50]),
                  ),
                  children: [
                    ListTile(
                      tileColor: Colors.black54,
                      title: Text(
                        'Geography',
                        style: TextStyle(color: Colors.yellow[50]),
                      ),
                      trailing:
                          Icon(Icons.view_module, color: Colors.yellow[50]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Course()),
                        );
                      },
                    ),
                    ListTile(
                      tileColor: Colors.black54,
                      title: Text(
                        'Maths',
                        style: TextStyle(color: Colors.yellow[50]),
                      ),
                      trailing:
                          Icon(Icons.view_module, color: Colors.yellow[50]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Course()),
                        );
                      },
                    ),
                    ListTile(
                      tileColor: Colors.black54,
                      title: Text(
                        'English',
                        style: TextStyle(color: Colors.yellow[50]),
                      ),
                      trailing:
                          Icon(Icons.view_module, color: Colors.yellow[50]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Course()),
                        );
                      },
                    ),
                    ListTile(
                      tileColor: Colors.black54,
                      title: Text(
                        'Accounts',
                        style: TextStyle(color: Colors.yellow[50]),
                      ),
                      trailing:
                          Icon(Icons.view_module, color: Colors.yellow[50]),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Course()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                // var value = new Courses();
                // var qsn = new Question();
                // var qsnsList = <Question>[];

                // MockCourses().getAll().forEach((element) async {
                //   MockQuestions().getAll().forEach((e) async {
                //     qsn.type = e["type"].toString();
                //     // qsn.answersMultipleChoice = e["MultiplehoiceAnswers"];
                //     qsn.question = e["Question"].toString();
                //     qsn.status = e["Status"].toString();
                //     qsnsList.add(qsn);
                //     print(qsn.toString());
                //   });
                //   value.name = element["Course"].toString();
                //   value.assignments = qsnsList;
                //   value.exercise = qsnsList;
                //   value.practiseQsn = qsnsList;
                //   value.quiz = qsnsList;
                //   print(qsnsList);
                //   appState.registeredCourses.add(value);
                //   print(value.toString());
                // });

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
                                      appState.registeredCourses[index].name,
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
                                      child: SingleChildScrollView(
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
                                                appState.setTabInitPosition(0);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Other Resources'),
                                              onTap: () {
                                                appState.setTabInitPosition(1);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Practice questions'),
                                              onTap: () {
                                                appState.setTabInitPosition(2);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            ),
                                          ],
                                        ),
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
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            ListTile(
                                              hoverColor: Colors.black12,
                                              // onTap: ,
                                              title: Text('Assignments'),
                                              onTap: () {
                                                appState.setTabInitPosition(3);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Quiz'),
                                              onTap: () {
                                                appState.setTabInitPosition(5);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            ),
                                            ListTile(
                                              title: Text('Excercises'),
                                              onTap: () {
                                                appState.setTabInitPosition(4);
                                                appState.selectedCourse = index;
                                                Navigator.pushNamed(
                                                  context,
                                                  '/course',
                                                );
                                              },
                                            )
                                          ],
                                        ),
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
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: ListView(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Card(
                      elevation: 4,
                      color: Colors.yellow[50],
                      child: ListView(
                        children: [
                          ListTile(
                            title: Text('Todo item 1'),
                          ),
                          ListTile(
                            title: Text('Todo item 2'),
                          ),
                          ListTile(
                            title: Text('Todo item 3'),
                          ),
                          ListTile(
                            title: Text('Todo item 4'),
                          ),
                          ListTile(
                            title: Text('Todo item 5'),
                          ),
                          ListTile(
                            title: Text('Todo item 6'),
                          ),
                          ListTile(
                            title: Text('Todo item 7'),
                          ),
                          ListTile(
                            title: Text('Todo item 8'),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
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
              ],
            ),
          )
        ],
      ),
    );
  }

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
}
