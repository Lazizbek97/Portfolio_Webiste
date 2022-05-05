import 'package:flutter/material.dart';

class PortfolioTexts extends StatelessWidget {
  PortfolioTexts({Key? key, required this.textSize}) : super(key: key);
  double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Portfolios",
          style: TextStyle(fontSize: textSize, fontWeight: FontWeight.w600),
        ),
        const Text(
          "These are just 10 custom portfolio projects' UIs. You can checkout their source code out on my GitHub account or Telegram blog for their vedio screens",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
