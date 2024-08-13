import 'package:flutter/material.dart';

class scores extends StatefulWidget {
  scores({Key? key, required this.batscore}) : super(key: key);
  final String batscore;

  @override
  State<scores> createState() => _scoresState();
}

class _scoresState extends State<scores> {
  List<String> selectedruns = [];

  @override
  void initState() {
    super.initState();
    selectedruns.add(widget.batscore);
  }

  choosedruns(String run) {
    setState(() {
      selectedruns.add(run);
      print(run);
      print(selectedruns);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Trigger the addition of the run when the widget is built
          choosedruns(widget.batscore),
          Text(
            widget.batscore,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Selected Runs: $selectedruns',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
