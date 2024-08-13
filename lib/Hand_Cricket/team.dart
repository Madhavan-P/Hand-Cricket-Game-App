import 'package:flutter/material.dart';

class Teams extends StatefulWidget {
  const Teams(this.func, this.seletectleage, {super.key});
  final void Function(String selectteam, String league) func;
  final seletectleage;

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  String league = '';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.seletectleage == 'IPL'
                ? Column(
                    children: [
                      const Text(
                        'Choose The Team',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'You Want Play',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(widget.seletectleage),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'RCB');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 5.0,
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/rcb.jpg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'RCB',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'CSK');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(width: 5.0),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/csk.jpg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'CSK',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'DC');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 5.0,
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/dc.jpg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'DC',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'KKR');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(width: 5.0),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/kkr.jpg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'KKR',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'GT');
                              });
                            }, //choose('Bat'),
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 5.0,
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/gt.jpeg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'GT',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'LSG');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(width: 5.0),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/lsg.jpeg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'LSG',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'MI');
                              });
                            }, //choose('Bat'),
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 5.0,
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/mi.jpeg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'MI',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'SRH');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(width: 5.0),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/srh.jpeg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'SRH',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'RR');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(
                              //     width: 5.0,
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/rr.jpg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'RR',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.func('IPL', 'PK');
                              });
                            },
                            icon: Container(
                              // decoration: BoxDecoration(
                              //   border: Border.all(width: 5.0),
                              // ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'images/Hand_Cricket/ipl-teams/pk.jpeg',
                                    width: 150,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'PK',
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                : const Column(
                    children: [
                      Text('Working'),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}
