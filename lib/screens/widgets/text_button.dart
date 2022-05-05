import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  VoidCallback onTap;
  String text;
   TextButtonWidget({Key? key, required this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child:  Text(text, style: TextStyle(fontSize: 20),),
    );
  }
}
