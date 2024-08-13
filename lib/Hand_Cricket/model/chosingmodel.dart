import 'package:flutter/material.dart';
import 'package:hand_cricket_game/Hand_Cricket/choosing.dart';
import 'package:hand_cricket_game/Hand_Cricket/play_ground.dart';

class model extends StatefulWidget {
  const model(this.falltoss, this.text, {super.key});

  final String falltoss;
  final String text;

  @override
  State<model> createState() => _modelState();
}

class _modelState extends State<model> {
  bool changing = false;
  void change(String falltoss) {
    setState(() {
      if (falltoss == 'Won The Toss') {
        print('working won');
        changing = true;
      } else {
        print('working lose');
        changing = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    change(widget.falltoss);
  }

  @override
  Widget build(BuildContext context) {
    // /var changing;
    return Center(
      child: changing == true ? const Choosing() : playground(widget.text),
    );
  }
}
