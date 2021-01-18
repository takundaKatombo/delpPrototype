import 'package:delp/views/pages/assignment.dart';
import 'package:delp/views/pages/exercise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  int _selectedNotes;
  int _selectedPractiseQsn;
  int _selectedAss;
  int _selectedExercise;
  int _selectedQuiz;
  int _selectedPractiseQsnChapter;

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
                          style: TextStyle(
                            color: Colors.black,
                          ),
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
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedNotes == 1,
                            title: Text(
                              'Chapter 1',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedNotes = 1;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedNotes == 2,
                            title: Text(
                              'Chapter 2',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedNotes = 2;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedNotes == 3,
                            title: Text(
                              'Chapter 3',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedNotes = 3;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedNotes == 4,
                            title: Text(
                              'Chapter 4',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedNotes = 4;
                              });
                            })
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
                                selectedTileColor: Colors.yellow[50],
                                selected: _selectedPractiseQsnChapter == 1,
                                title: Text(
                                  'Chapter 1',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedPractiseQsnChapter = 1;
                                  });
                                }),
                            ListTile(
                                selectedTileColor: Colors.yellow[50],
                                selected: _selectedPractiseQsnChapter == 2,
                                title: Text(
                                  'Chapter 2',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedPractiseQsnChapter = 2;
                                  });
                                }),
                            ListTile(
                                selectedTileColor: Colors.yellow[50],
                                selected: _selectedPractiseQsnChapter == 3,
                                title: Text(
                                  'Chapter 3',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedPractiseQsnChapter = 3;
                                  });
                                }),
                            ListTile(
                                selectedTileColor: Colors.yellow[50],
                                selected: _selectedPractiseQsnChapter == 4,
                                title: Text(
                                  'Chapter 4',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedPractiseQsnChapter = 4;
                                  });
                                })
                          ],
                          title: Text(
                            'Objective wise ',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedPractiseQsn == 1,
                            title: Text(
                              'Easy',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedPractiseQsn = 1;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedPractiseQsn == 2,
                            title: Text(
                              'Tough',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedPractiseQsn = 2;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedPractiseQsn == 3,
                            title: Text(
                              'Very Tough',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedPractiseQsn = 3;
                              });
                            }),
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
                            selected: _selectedAss == 1,
                            title: Text(
                              'Submission Pending',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedAss = 1;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedAss == 2,
                            title: Text(
                              'Done',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedAss = 2;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedAss == 3,
                            title: Text(
                              'Assessed',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedAss = 3;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedAss == 4,
                            title: Text(
                              'Due',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedAss = 4;
                              });
                            })
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
                            selected: _selectedExercise == 2,
                            title: Text(
                              'Submission Pending',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedExercise = 2;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedExercise == 3,
                            title: Text(
                              'Assessed',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedExercise = 3;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedExercise == 4,
                            title: Text(
                              'Done',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedExercise = 4;
                              });
                            })
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
              Row(
                children: [
                  Container(
                    color: Colors.black54,
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: Column(
                      children: [
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedExercise == 2,
                            title: Text(
                              'Submission Pending',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedExercise = 2;
                              });
                            }),
                        ListTile(
                            selectedTileColor: Colors.yellow[50],
                            selected: _selectedExercise == 4,
                            title: Text(
                              'Done',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                _selectedExercise = 4;
                              });
                            })
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
                          title: Text('Chapter 1'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Chapter 2'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Chapter 3'),
                        ),
                        Divider(),
                        ListTile(
                          tileColor: Colors.yellow[50],
                          title: Text('Chapter 4'),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
