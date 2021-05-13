import 'dart:convert';

import 'package:delp/controller/loginController.dart';
import 'package:delp/model/appStateModel.dart';
import 'package:delp/model/courses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockCourses.dart';
import 'package:delp/model/mockData/mockQsns.dart';
import 'package:delp/model/todoModel.dart';
import 'package:delp/view/pages/assignment.dart';
import 'package:delp/view/pages/newTodoView.dart';
import 'package:delp/view/widgets/course_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//TODO: Do Calender pop up,(persistent storage) check syncfusion calender
//TODO: Do Notifications pop up,
//TODO: Do Notifications for new assignments exercise notes etc,

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

    return Home(widget: widget, appState: appState);
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
  SharedPreferences sharedPreferences;
  List<Todo> list = [];
  @override
  void initState() {
    loadSharedPreferencesAndData();
    super.initState();
  }

  void loadSharedPreferencesAndData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    loadData();
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

  void _showNotifications(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          content: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.175,
            child: ListView(
              children: [
                ListTile(
                    title: Text('Assignment Due tommorow'),
                    onTap: () {
                      Navigator.popAndPushNamed(context, '/assignment');
                    },
                    trailing: Icon(
                      Icons.close,
                    )),
                ListTile(
                    title: Text('Notification 2'),
                    trailing: Icon(
                      Icons.close,
                    )),
                ListTile(
                    title: Text('Notification 3'),
                    trailing: Icon(
                      Icons.close,
                    )),
                ListTile(
                    title: Text('Notification 4'),
                    trailing: Icon(
                      Icons.close,
                    )),
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
        return AlertDialog(
          content: Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: MediaQuery.of(context).size.width * 0.175,
            child: Column(
              children: [
                ListTile(
                  title: Text('Coursework'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/coursework');
                  },
                ),
                ListTile(
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.popAndPushNamed(context, '/settings');
                  },
                ),
              ],
            ),
          ),
          actions: [
            ElevatedButton.icon(
                onPressed: () => Navigator.popAndPushNamed(context, '/login'),
                icon: Icon(Icons.logout),
                label: Text('Logout'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //remove one of the scaffolds this and login page
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //leading: Icon( color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
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
                final DateTime picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2021),
                    firstDate: DateTime(2020),
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
                  _selectedDate = picked;
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
                    child: Card(
                      elevation: 0,
                      child: Row(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.15,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: ElevatedButton(
                                onPressed: () {
                                  _showDialog(context);
                                },
                                child: Center(
                                    child: Text(
                                  'Next Lesson on 1 Feb',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            //margin: EdgeInsets.all(5),
                            color: Colors.white,

                            // borderRadius: BorderRadius.circular(8.0),

                            //color: Colors.green,
                            width: MediaQuery.of(context).size.width * 0.35 + 1,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.03,
                                    child: Center(
                                      child: Text(
                                        widget.appState.registeredCourses[index]
                                            .name,
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
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
                                      color: Colors.white,
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
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Stack(
                    children: [
                      Card(
                          elevation: 4,
                          child: list.isEmpty ? emptyList() : buildListView()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            onPressed: () => goToNewItemView(),
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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

  Widget emptyList() {
    return Center(child: Text('No items'));
  }

  Widget buildListView() {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return buildItem(list[index], index);
      },
    );
  }

  Widget buildItem(Todo item, index) {
    return Dismissible(
      key: Key('${item.hashCode}'),
      background: Container(color: Colors.red[700]),
      onDismissed: (direction) => removeItem(item),
      direction: DismissDirection.startToEnd,
      child: buildListTile(item, index),
    );
  }

  Widget buildListTile(Todo item, int index) {
    print(item.completed);
    return ListTile(
      onTap: () => changeItemCompleteness(item),
      onLongPress: () => goToEditItemView(item),
      title: Text(
        item.title,
        key: Key('item-$index'),
        style: TextStyle(
            color: item.completed ? Colors.grey : Colors.black,
            decoration: item.completed ? TextDecoration.lineThrough : null),
      ),
      trailing: Icon(
        item.completed ? Icons.check_box : Icons.check_box_outline_blank,
        key: Key('completed-icon-$index'),
      ),
    );
  }

  void goToNewItemView() {
    // Here we are pushing the new view into the Navigator stack. By using a
    // MaterialPageRoute we get standard behaviour of a Material app, which will
    // show a back button automatically for each platform on the left top corner
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return NewTodoView();
    })).then((title) {
      if (title != null) {
        addItem(Todo(title: title));
      }
    });
  }

  void addItem(Todo item) {
    // Insert an item into the top of our list, on index zero
    list.insert(0, item);
    saveData();
    setState(() {});
  }

  void changeItemCompleteness(Todo item) {
    setState(() {
      item.completed = !item.completed;
    });
    saveData();
  }

  void goToEditItemView(item) {
    // We re-use the NewTodoView and push it to the Navigator stack just like
    // before, but now we send the title of the item on the class constructor
    // and expect a new title to be returned so that we can edit the item
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return NewTodoView(item: item);
    })).then((title) {
      if (title != null) {
        editItem(item, title);
      }
    });
  }

  void editItem(Todo item, String title) {
    item.title = title;
    saveData();
    setState(() {});
  }

  void removeItem(Todo item) {
    list.remove(item);
    saveData();
    setState(() {});
  }

  void loadData() {
    List<String> listString = sharedPreferences.getStringList('list');
    if (listString != null) {
      list = listString.map((item) => Todo.fromMap(json.decode(item))).toList();
      setState(() {});
    }
  }

  void saveData() {
    List<String> stringList =
        list.map((item) => json.encode(item.toMap())).toList();
    sharedPreferences.setStringList('list', stringList);
  }
}
