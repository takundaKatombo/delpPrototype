import 'package:delp/views/pages/assignment.dart';
import 'package:delp/views/pages/exercise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.yellow[50],

            // centerTitle: true,
            //leading: Icon(Icons.person_outline),
            title: Text(
              'Coursename',
              style: TextStyle(color: Colors.black),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.black12.withOpacity(0.7),
                    indicatorColor: Colors.black54,
                    tabs: [
                      Tab(
                        child: Text(
                          'Notes',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Other Resources',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Practice Questions',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Assignments',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Exercises',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Quiz',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
            // actions: <Widget>[
            //   Padding(
            //     padding: const EdgeInsets.only(right: 16.0),
            //     child: Icon(Icons.add_alert),
            //   ),
            // ],
          ),
          body: TabBarView(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    color: Colors.black54,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      children: [
                        Text(
                          'Contents',
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        ListTile(
                          selectedTileColor: Colors.yellow[50],
                          selected: true,
                          title: Text(
                            'Chapter 1',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('Chapter 2'),
                        ),
                        ListTile(
                          title: Text('Chapter 3'),
                        ),
                        ListTile(
                          title: Text('Chapter 4'),
                        )
                      ],
                    ),
                  ),
                  // Spacer(),
                  // Divider(),
                  // Container(
                  //   color: Colors.yellow[50],
                  //   width: MediaQuery.of(context).size.width * 0.8,
                  //   child: Column(
                  //     children: [
                  //       ListTile(
                  //         tileColor: Colors.yellow[50],
                  //         onTap: () {
                  //           Navigator.push(
                  //             context,
                  //             MaterialPageRoute(builder: (context) => MyApp()),
                  //           );
                  //         },
                  //         title: Text('Assignment 1'),
                  //       ),
                  //       Divider(),
                  //       ListTile(
                  //         tileColor: Colors.yellow[50],
                  //         title: Text('Assignment 2'),
                  //       ),
                  //       Divider(),
                  //       ListTile(
                  //         tileColor: Colors.yellow[50],
                  //         title: Text('Assignment 3'),
                  //       ),
                  //       Divider(),
                  //       ListTile(
                  //         tileColor: Colors.yellow[50],
                  //         title: Text('Assignment 4'),
                  //       ),
                  //       Divider(),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Container(
                child: Center(
                  child: Text('Other Resources'),
                ),
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black54,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      children: [
                        ExpansionTile(
                          // selectedTileColor: Colors.yellow[50],
                          // selected: true,

                          children: [
                            ListTile(
                              // selectedTileColor: Colors.yellow[50],
                              // selected: true,
                              title: Text(
                                'Chapter 1',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text('Chapter 2'),
                            ),
                            ListTile(
                              title: Text('Chapter 3'),
                            ),
                            ListTile(
                              title: Text('Chapter 4'),
                            )
                          ],
                          title: Text(
                            'Objective wise ',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text('Easy'),
                        ),
                        ListTile(
                          title: Text('Tough'),
                        ),
                        ListTile(
                          title: Text('Very Tough'),
                        )
                      ],
                    ),
                  ),
                  // Spacer(),
                  Divider(),
                  Container(
                    color: Colors.yellow[50],
                    width: MediaQuery.of(context).size.width * 0.8,
                    // child: Column(
                    //   children: [
                    //     ExpansionTile(
                    //       //tileColor: Colors.yellow[50],
                    //       // onTap: () {
                    //       //   Navigator.push(
                    //       //     context,
                    //       //     MaterialPageRoute(builder: (context) => MyApp()),
                    //       //   );
                    //       // },
                    //       title: Text('Objective wise '),
                    //     ),
                    //     Divider(),
                    //     ListTile(
                    //       tileColor: Colors.yellow[50],
                    //       title: Text('Assignment 2'),
                    //     ),
                    //     Divider(),
                    //     ListTile(
                    //       tileColor: Colors.yellow[50],
                    //       title: Text('Assignment 3'),
                    //     ),
                    //     Divider(),
                    //     ListTile(
                    //       tileColor: Colors.yellow[50],
                    //       title: Text('Assignment 4'),
                    //     ),
                    //     Divider(),
                    //   ],
                    // ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black54,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      children: [
                        ListTile(
                          selectedTileColor: Colors.yellow[50],
                          selected: true,
                          title: Text(
                            'Submission Pending',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text('Done'),
                        ),
                        ListTile(
                          title: Text('Assessed'),
                        ),
                        ListTile(
                          title: Text('Due'),
                        )
                      ],
                    ),
                  ),
                  // Spacer(),
                  Divider(),
                  Container(
                    color: Colors.yellow[50],
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.yellow[50],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          title: Text('Assignment 1'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Assignment 2'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Assignment 3'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Assignment 4'),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    color: Colors.black54,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      children: [
                        ListTile(
                          selectedTileColor: Colors.yellow[50],
                          selected: true,
                          title: Text(
                            'Submission Pending',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                          title: Text('Done'),
                        ),
                        ListTile(
                          title: Text('Assessed'),
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Divider(),
                  Container(
                    color: Colors.yellow[50],
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: Colors.yellow[50],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Exercise()),
                            );
                          },
                          title: Text('Exercise 1'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Exercise 2'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Exercise 3'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Exercise 4'),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Center(
                  child: Text('Quiz'),
                ),
              ),
            ],
          )),
    );
  }
}
