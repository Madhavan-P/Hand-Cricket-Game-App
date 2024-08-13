import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/batting.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/runs.dart';
import 'package:hand_cricket_game/Hand_Cricket/model/button.dart';
import 'package:hand_cricket_game/Hand_Cricket/scoreboard.dart';
import 'package:hand_cricket_game/main.dart';

class bowling extends StatefulWidget {
  const bowling(this.innings,
      {super.key,
      required this.batscore,
      required this.battinglist,
      required this.balls});

  final String innings;
  final int batscore;
  final List<String> battinglist;
  final List<String> balls;

  @override
  State<bowling> createState() => _bowlingState();
}

class _bowlingState extends State<bowling> {
  var vs = 'VS';
  bool changeinings = true;
  String? OpponentBat;
  bool res = false;
  String? text = '0';
  String? scoring_run;
  bool drs = true;
  final screen = runs[0];
  List<String> oppSelectedruns = [];
  List<int> Battingruns = [];
  List<String> yourballs = [];

  void output(String data) {
    String AIBat = (randomize.nextInt(6) + 1).toString();
    if (AIBat == data) {
      setState(() {
        res = true;
        scoring_run = data;
        drs = false;
        text = 'Out';
        print("chaging working for bowling");
        print(yourballs);
        print(oppSelectedruns);
        OpponentBat = AIBat;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          changeinings = false;
          res = true;
        });
      });
    } else {
      setState(() {
        yourballs.add(data);
        oppSelectedruns.add(AIBat);
        Battingruns.add(int.parse(AIBat));
        if (widget.innings == 'second' && calculateSum() > widget.batscore) {
          changeinings = false;
          Future.delayed(const Duration(seconds: 3), () {
            setState(() {
              res = false;
            });
          });
        } else {
          OpponentBat = AIBat;
          scoring_run = data;
          res = true;
          text = 'Not Out';
          drs = true;

          print(AIBat);
          print(data);
        }
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          res = false;
        });
      });
    }
  }

  int calculateSum() {
    if (oppSelectedruns.isEmpty) {
      return 0;
    } else {
      return Battingruns.reduce((a, b) => a + b);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: changeinings
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You Are Bowling Now',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 330,
                      width: 180,
                      child: Center(
                        child: res
                            ? Text(
                                scoring_run ?? '',
                                style: const TextStyle(
                                  fontSize: 150,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : Column(
                                children: [
                                  ...screen.getruns().map((run) {
                                    return buttons(
                                      scoreText: run,
                                      onTap: () {
                                        setState(() {
                                          output(run);
                                        });
                                      },
                                    );
                                  }),
                                ],
                              ),
                      ),
                    ),
                    Container(
                      height: 210,
                      width: 40,
                      child: Text(
                        '  |\n  |\n  |\n$vs\n  |\n  |\n  |\n',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 330,
                      width: 160,
                      child: Center(
                        child: res
                            ? Text(
                                OpponentBat ?? '',
                                style: const TextStyle(
                                  fontSize: 150,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : const Text(
                                "Opponent",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ScoreBoard ',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 190,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${calculateSum()}  /  ',
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.yellow,
                            ),
                          ),
                          text == 'Not Out'
                              ? Text(
                                  text ?? '',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.green,
                                  ),
                                )
                              : Text(
                                  text ?? '',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.red,
                                  ),
                                ),
                        ],
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Target Score',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      height: 50,
                      width: 190,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: widget.innings == 'second'
                            ? Text(
                                '${widget.batscore + 1}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              )
                            : const Text(
                                'You are First Bowling',
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.red,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : widget.innings == 'First'
              ? batting(
                  'second',
                  bowlscore: calculateSum(),
                  oppbattinglist: oppSelectedruns,
                  bat: yourballs,
                )
              : scoreboard(
                  batscore: widget.batscore,
                  runoppscores: oppSelectedruns,
                  bat_Ballscore: widget.balls,
                  bowlscore: calculateSum(),
                  runyouscores: widget.battinglist,
                  bowl_Batscore: yourballs,
                  innings: 'defend',
                ),
    );
  }
}
