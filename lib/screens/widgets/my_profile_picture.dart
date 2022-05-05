import 'package:flutter/material.dart';

class MyProfilePicture extends StatelessWidget {
   MyProfilePicture({
    Key? key,
  required this.width,
  required this.height,
  }) : super(key: key);

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width < 1370 ? height : 882,
      width: MediaQuery.of(context).size.width < 1420 ? width : 552,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage("https://source.unsplash.com/random"),
        ),
      ),
    );
  }
}
