import 'package:flutter/material.dart';


class SkillsProgressBar extends StatelessWidget {
  SkillsProgressBar({Key? key, required this.title, required this.rightPadding})
      : super(key: key);

  String title;
  double rightPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        Container(
          height: 20,
          width: MediaQuery.of(context).size.width * 0.4,
          padding: EdgeInsets.only(right: rightPadding),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            height: 20,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
