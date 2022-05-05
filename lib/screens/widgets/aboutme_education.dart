import 'package:flutter/material.dart';

class AboutMeEducation extends StatelessWidget {
  const AboutMeEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width < 800
          ? MediaQuery.of(context).size.width * 0.75
          : MediaQuery.of(context).size.width * 0.4,
      child: Column(
        children: [
          const Text(
            "About me",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          const Text(
            "I'm a full-stack Flutter developer with Firebase backend. My Stacks are C, Python, Dart, Flutter, Firebase, SQL, SQLite, Hive, Flask etc. Furthermore, I can speak in 4 languages fluently, Uzbek, English, Korean and Russian. I've lived and studied in Korea for about 1.5 years with more than 15 different nationalities. I believe, this experience helped me to boost my communication skills with foreigners. Additionally, I've more than 1.5 years of experience to teach languages(Korean, English) in Study Centers. In short, I'm ready for any kind of challenges and available to work remotely or in offices without any difficulties.",
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
