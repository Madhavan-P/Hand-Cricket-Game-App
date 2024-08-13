//import 'package:learningapp/Hand_Cricket/data/runs.dart';

class manageruns {
  const manageruns(
    this.runs,
  );
  final List<String> runs;
  List<String> getruns() {
    final runslist = List.of(runs);
    // suffledList.shuffle();
    // suffledList.shuffle();
    return runslist;
  }
}
