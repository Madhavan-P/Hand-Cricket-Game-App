import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.funtoss, {super.key});

  //final void Function() UIDesign;
  final void Function() funtoss;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/Hand_Cricket/logo1.png',
            width: 250,
          ),
          const SizedBox(
            height: 80,
          ),
          ElevatedButton(
            onPressed: funtoss,
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                )),
            child: const Text("Let's Start "),
          )
        ],
      ),
    );
  }
}
