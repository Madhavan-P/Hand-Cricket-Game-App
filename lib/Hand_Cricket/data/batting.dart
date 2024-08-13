import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/bowling.dart';
import 'package:hand_cricket_game/Hand_Cricket/data/runs.dart';
import 'package:hand_cricket_game/Hand_Cricket/model/button.dart';
import 'package:hand_cricket_game/Hand_Cricket/scoreboard.dart';
import 'package:hand_cricket_game/main.dart';

class batting extends StatefulWidget {
  const batting(this.innings,
      {super.key,
      required this.bowlscore,
      required this.oppbattinglist,
      required this.bat});

  final String innings;
  final int bowlscore;
  final List<String> oppbattinglist;
  final List<String> bat;

  @override
  State<batting> createState() => _battingState();
}

class _battingState extends State<batting> {
  var vs = 'VS';
  bool changeinings = true;
  String? OpponentBall;
  bool res = false;
  String? text = '0';
  String? scoring_run;
  bool drs = true;
  final screen = runs[0];
  List<String> Selectedruns = [];
  List<String> BowlerBalls = [];
  List<int> Battingruns = [];

  void output(String data) {
    String AIBowl = (randomize.nextInt(6) + 1).toString();
    if (AIBowl == data) {
      setState(() {
        res = true;
        scoring_run = data;
        drs = false;
        text = 'Out';
        OpponentBall = AIBowl;
        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            changeinings = false;
            res = true;
          });
        });
      });
    } else {
      setState(() {
        Selectedruns.add(data);
        BowlerBalls.add(AIBowl);
        Battingruns.add(int.parse(data));
        if (widget.innings == 'second' && calculateSum() > widget.bowlscore) {
          changeinings = false;
          Future.delayed(const Duration(seconds: 3), () {
            setState(() {
              res = false;
            });
          });
        } else {
          OpponentBall = AIBowl;
          scoring_run = data;
          res = true;
          text = 'Not Out';
          drs = true;
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
    if (Battingruns.isEmpty) {
      return 0;
    } else {
      return Battingruns.reduce((a, b) => a + b);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: changeinings == true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'You Are Batting Now',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 330,
                      width: 160,
                      child: Center(
                        child: res == true
                            ? Text(
                                OpponentBall ?? '',
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
                    Container(
                      height: 210,
                      width: 40,
                      child: Text(
                        '  |\n  |\n  |\n$vs\n  |\n  |\n  |\n',
                        style: const TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 330,
                      width: 180,
                      child: Center(
                        child: res == true
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
                  ],
                ),
                // const SizedBox(
                //   height: 20,
                // ),
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
                      width: 180,
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
                      width: 180,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Center(
                        child: widget.innings == 'second'
                            ? Text(
                                '${widget.bowlscore + 1}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.red,
                                ),
                              )
                            : const Text(
                                'You are First Batting',
                                style: TextStyle(
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
              ? bowling(
                  'second',
                  batscore: calculateSum(),
                  battinglist: Selectedruns,
                  balls: BowlerBalls,
                )
              : scoreboard(
                  batscore: calculateSum(),
                  runyouscores: Selectedruns,
                  bat_Ballscore: BowlerBalls,
                  bowlscore: widget.bowlscore,
                  runoppscores: widget.oppbattinglist,
                  bowl_Batscore: widget.bat,
                  innings: 'chase',
                ),
    );
  }
}
