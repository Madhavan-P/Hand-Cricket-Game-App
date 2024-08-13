import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/play_ground.dart';

class Choosing extends StatefulWidget {
  // Toss({super.key});

  const Choosing({super.key});

  @override
  State<Choosing> createState() => _ChoosingState();
}

class _ChoosingState extends State<Choosing> {
  choose(String text) {
    text == 'Bat'
        ? text = 'You Elected To Bat First '
        : text = 'You Elected To Field First ';
    Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) => playground(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'You Won The Toss',
          style: TextStyle(
            fontSize: 35,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'You Choose To',
          style: TextStyle(
            fontSize: 33,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => choose('Bat'),
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0),
                ),
                child: Image.asset(
                  'images/Hand_Cricket/batting.jpeg',
                  width: 150,
                ),
              ),
            ),
            IconButton(
              onPressed: () => choose('Field'),
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 4.0),
                ),
                child: Image.asset(
                  'images/Hand_Cricket/bowling1.png',
                  width: 150,
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
