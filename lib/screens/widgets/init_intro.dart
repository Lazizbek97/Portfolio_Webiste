import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Initail_Intro_me extends StatelessWidget {
  Initail_Intro_me({
    required this.width,
    required this.size,
    Key? key,
  }) : super(key: key);

  double width;
  double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: getHeight(557),
      width: MediaQuery.of(context).size.width < 1370 ? width : 556,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Hello Flutter Folks! I'm ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          const AutoSizeText(
            "I'm Lazizbek Fayziev",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xffFD5956),
            ),
          ),
          AutoSizeText(
            "Flutter Developer",
            style: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
          const AutoSizeText(
            "Since creative designers often interact with creative teams, managers and clients, they need strong communication skills.",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
