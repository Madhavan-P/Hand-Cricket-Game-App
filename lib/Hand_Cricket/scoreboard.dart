import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/game_ui.dart';

class scoreboard extends StatefulWidget {
  scoreboard({
    Key? key,
    required this.batscore,
    required this.runyouscores,
    required this.bat_Ballscore,
    required this.bowlscore,
    required this.runoppscores,
    required this.bowl_Batscore,
    required this.innings,
  }) : super(key: key);

  int batscore;
  List<String> runyouscores;
  List<String> bat_Ballscore;
  int bowlscore;
  List<String> runoppscores;
  List<String> bowl_Batscore;
  String innings;

  @override
  State<scoreboard> createState() => _scoreboardState();
}

class _scoreboardState extends State<scoreboard> {
  String? outputtext;
  bool splashscreen = true;
  Color outputColor = Colors.black;

  void result() {
    if (widget.batscore > widget.bowlscore && widget.innings == 'chase') {
      setState(() {
        outputtext = 'You Won By 10 Wickets';
        outputColor = Colors.green;
      });
    } else if (widget.batscore < widget.bowlscore &&
        widget.innings == 'chase') {
      int restext = widget.bowlscore - widget.batscore;
      setState(() {
        outputtext = 'Opp Won By $restext Runs';
        outputColor = Colors.red;
      });
    } else if (widget.batscore < widget.bowlscore &&
        widget.innings == 'defend') {
      setState(() {
        outputtext = 'Opp Won By 10 Wickets';
        outputColor = Colors.red;
      });
    } else if (widget.batscore > widget.bowlscore &&
        widget.innings == 'defend') {
      int restext = widget.batscore - widget.bowlscore;
      setState(() {
        outputtext = 'You Won By $restext Runs';
        outputColor = Colors.green;
      });
    } else {
      setState(() {
        outputtext = 'Match Drawn';
        outputColor = Colors.blue;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    result();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        splashscreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    int battotal = widget.runyouscores.length;
    int bowltotal = widget.bowl_Batscore.length;
    return Center(
      child: splashscreen
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  outputtext ?? '',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                  ),
                ),
                Image.asset('images/Hand_Cricket/won1.png'),
                //Lottie.asset('assets/animations/celebration.json'),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Score Board',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Batting: ${widget.batscore}',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    //const SizedBox(width: 20),
                    const Text(
                      'VS',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    //const SizedBox(width: 20),
                    Text(
                      'Bowling: ${widget.bowlscore}',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 350,
                  width: 380,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Your Batting',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      'Runs',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Bowl',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Your Bowling',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Text(
                                      'Runs',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Bowl',
                                      style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: List.generate(battotal, (i) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.runyouscores[i],
                                      style: const TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    const Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    Text(
                                      widget.bat_Ballscore[i],
                                      style: const TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                            const SizedBox(height: 20, width: 100),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: List.generate(bowltotal, (i) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      widget.bowl_Batscore[i],
                                      style: const TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    const Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize: 28,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const SizedBox(width: 25),
                                    Text(
                                      widget.runoppscores[i],
                                      style: const TextStyle(
                                        fontSize: 28,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Batting: ${widget.batscore}',
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Bowling: ${widget.bowlscore}',
                              style: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                if (outputtext != null)
                  Text(
                    outputtext!,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: outputColor,
                    ),
                  ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => UI_Design('Home')),
                    );
                  },
                  icon: const Icon(
                    Icons.restart_alt_rounded,
                  ),
                  label: const Text('Restart'),
                ),
              ],
            ),
    );
  }
}
