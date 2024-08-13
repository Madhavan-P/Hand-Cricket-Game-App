import "dart:math";
import "package:flutter/material.dart";
import "package:hand_cricket_game/Hand_Cricket/game_ui.dart";

final randomize = Random();
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hand Cricket Game',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          MyWidget.red(),
          SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const UI_Design(''),
                ),
              );
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide.none,
            ),
            child: const Text(
              "Go To Game Sections",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget(
      this.color1, this.color2, this.color3, this.color4, this.color5,
      {super.key /*, required this.colors*/});

  const MyWidget.red({super.key})
      : color1 = Colors.yellow,
        color2 = Colors.black,
        color3 = Colors.white10,
        color4 = Colors.purple,
        color5 = Colors.indigo;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3, color4, color5],
          begin: Alignment.topLeft,
          end: Alignment.centerRight,
        ),
      ),
      alignment: const FractionalOffset(.5, 0.7),
      child: Column(),
    );
  }
}
