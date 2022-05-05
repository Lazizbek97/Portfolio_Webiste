import 'package:flutter/material.dart';

class SkillsTexts extends StatelessWidget {
  SkillsTexts({Key? key, required this.size}) : super(key: key);

  double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Stacks & Services",
          style: TextStyle(fontSize: size, fontWeight: FontWeight.w600),
        ),
        const Text(
          "What i'am expert in and would offer you",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
