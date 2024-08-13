import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key, required this.scoreText, required this.onTap});
  final scoreText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          onPressed: onTap,
          child: Text(
            scoreText,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
