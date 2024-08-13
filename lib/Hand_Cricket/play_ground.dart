import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/model/allowing.dart';

class playground extends StatefulWidget {
  const playground(
    this.choice, {
    super.key,
  });
  final String choice;

  @override
  State<playground> createState() => _playgroundState();
}

class _playgroundState extends State<playground> {
  bool ground = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.yellow,
              Colors.transparent,
              Colors.green,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: ground
              ? SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'images/Hand_Cricket/stadium.jpeg',
                          height: 320,
                          width: 380,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Center(
                          child: Text(
                            ' Welcome to ....\n         Chinnasamy Stadium',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          widget.choice,
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        OutlinedButton.icon(
                          onPressed: () {
                            setState(() {
                              ground = false;
                            });
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: const Icon(
                            Icons.local_fire_department_sharp,
                            color: Colors.red,
                          ),
                          label: const Text(
                            'Start The Battle',
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : allow(
                  widget.choice,
                ),
        ),
      ),
    );
  }
}
