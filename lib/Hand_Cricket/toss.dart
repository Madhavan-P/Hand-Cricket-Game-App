import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/toss_selection.dart';

class Toss extends StatefulWidget {
  const Toss(
    this.design, {
    super.key,
    //required void Function(String selected) selected,

    //required this.selected,
  });
  final void Function() design;

  @override
  State<Toss> createState() => _TossState();
}

class _TossState extends State<Toss> {
  var sel;
  bool page = true;

  //final void Function(String) selected;
  void calling(String data) {
    setState(() {
      sel = data;
      page = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: page == true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Its Time For Toss',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          calling('Head');
                        },
                        icon: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('images/Hand_Cricket/Head1.png'),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'HEADS',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          calling('Tail');
                        },
                        icon: SizedBox(
                          width: 150,
                          child: Column(
                            children: [
                              Image.asset('images/Hand_Cricket/Tail.png'),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'TAILS',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : TossSelection(sel!),
    );
  }
}
