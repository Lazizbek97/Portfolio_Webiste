import 'package:flutter/material.dart';

class AboutMeEducation extends StatelessWidget {
  const AboutMeEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  MediaQuery.of(context).size.width<800?MediaQuery.of(context).size.width * 0.75:  MediaQuery.of(context).size.width * 0.35,
      child: Column(
        children: [
          const Text(
            "About me",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          const Text(
            "I'm Lazizbek Fayziev and i do web design, Graphic Design, User Experiences. habitant et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.",
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Divider(
              height: 20,
            ),
          ),
          const Text(
            "Education",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  'Tashkent State University of Oriental Studies',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.business_outlined,
                size: 30,
                color: Color(0xff8DA2FE),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: Text(
                  'Kyung Hee University',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.business_outlined,
                size: 30,
                color: Color(0xff8DA2FE),
              )
            ],
          ),
        ],
      ),
    );
  }
}
