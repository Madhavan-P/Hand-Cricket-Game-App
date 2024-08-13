import 'package:flutter/material.dart';

class league extends StatelessWidget {
  const league(this.func, {super.key});
  //this.selectedleage,
  //String selectedleage;
  final void Function(String league) func;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Choose The League',
            style: TextStyle(
              fontSize: 35,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'You Want Play',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  func('ODI');
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
                        'images/Hand_Cricket/ODI-worldcup.jpeg',
                        width: 150,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'ODI World Cup',
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
                  func('T20');
                },
                icon: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 5.0),
                  // ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/Hand_Cricket/t20worldcup.png',
                        width: 150,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'T20 World Cup',
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
                  func('IPL');
                },
                icon: Container(
                  // decoration: BoxDecoration(
                  //   border: Border.all(width: 5.0),
                  // ),
                  child: Column(
                    children: [
                      Container(
                        // decoration: BoxDecoration(
                        //   border: Border.all(width: 5.0),
                        // ),
                        child: Image.asset(
                          'images/Hand_Cricket/Iplcup.jpeg',
                          width: 190,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'IPL',
                        style: TextStyle(
                          fontSize: 25,
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
        ],
      ),
    );
  }
}
