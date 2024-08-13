import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/game_home.dart';
import 'package:hand_cricket_game/Hand_Cricket/toss.dart';

class UI_Design extends StatefulWidget {
  const UI_Design(this.reset, {super.key});

  final reset;
  @override
  State<UI_Design> createState() => _UI_DesignState();
}

class _UI_DesignState extends State<UI_Design> {
  var activeScreen = 'Home';

  void screening3() {
    setState(() {
      activeScreen = 'Toss';
    });
  }

  void screening4() {
    setState(() {
      activeScreen = 'Toss-Result';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget switchScreen;
    switch (activeScreen) {
      case 'Toss':
        switchScreen = Toss(
          screening3,
        );
        break;

      default:
        switchScreen = HomePage(
          screening3,
        );
    }
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.yellow,
              Colors.green,
              Colors.transparent,
              Colors.black,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: switchScreen,
      ),
    );
  }
}
