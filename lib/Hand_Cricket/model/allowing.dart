import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/batting.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/bowling.dart';

class allow extends StatefulWidget {
  const allow(
    this.permission, {
    super.key,
  });

  final String permission;

  @override
  State<allow> createState() => _allowState();
}

class _allowState extends State<allow> {
  List<String> selectedruns = [];

  //var run;
  void choosedruns(String run) {
    selectedruns.add(run);
    print(run);
    print(selectedruns);
  }

  Widget checkallow(String data) {
    print('Permission: "$data"');
    if (data == 'You Elected To Bat First' ||
        data == 'Opponent Elected To Field') {
      print('bat working');
      return const batting(
        'First',
        bowlscore: 0,
        oppbattinglist: [],
        bat: [],
      );
    } else {
      print('bowl working');
      return const bowling(
        'First',
        batscore: 0,
        battinglist: [],
        balls: [],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: checkallow(widget.permission.trim()),
    );
  }
}
