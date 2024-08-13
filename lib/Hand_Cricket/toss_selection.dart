import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/model/chosingmodel.dart';

class TossSelection extends StatefulWidget {
  const TossSelection(this.selected, {super.key});
  final String selected;

  @override
  State<TossSelection> createState() => _TossSelectionState();
}

class _TossSelectionState extends State<TossSelection> {
  String? image;
  String? seltoss;
  Color? imageColor;
  bool changefun = true;
  var text;
  bool appchoice = false;

  void selectedToss(String selected) {
    int randomSideIndex = Random().nextInt(2); // Generates either 0 or 1

    String randomSide = randomSideIndex == 0 ? 'Head' : 'Tail';
    print(randomSide);
    print(selected);
    setState(() {
      if (selected == randomSide) {
        seltoss = 'Won The Toss';
        image = 'won1';
        text = 'wining';
        Future.delayed(
          const Duration(seconds: 2),
          () {
            setState(() {
              changefun = false;
            });
          },
        );
      } else {
        int randomchoiceIndex = Random().nextInt(2);
        var choice = randomchoiceIndex == 0 ? 'Bat' : 'Field';
        seltoss = 'Lost The Toss';
        choice = 'Opponent Elected To $choice ';
        image = 'lose';
        text = choice;
        appchoice = true;
        imageColor = const Color(0xFFC0C0C0);
        Future.delayed(
          const Duration(seconds: 3),
          () {
            setState(() {
              changefun = false;
            });
          },
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    selectedToss(widget.selected);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: changefun == true
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You $seltoss',
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'images/Hand_Cricket/$image.png',
                  color: imageColor,
                  width: 300,
                ),
                const SizedBox(
                  height: 30,
                ),
                if (appchoice == true && text != null)
                  Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ],
            )
          : model(seltoss!, text),
    );
  }
}
