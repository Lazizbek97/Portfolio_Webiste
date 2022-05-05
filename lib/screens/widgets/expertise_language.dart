import 'package:flutter/material.dart';
import 'package:web_project/screens/widgets/skillsProgress_bar.dart';

class LanguageExpertise extends StatelessWidget {
  const LanguageExpertise({
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
            "Tools Expertness",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          SkillsProgressBar(
            title: "Flutter",
            rightPadding: 20,
          ),
          SkillsProgressBar(
            title: "Dart",
            rightPadding: 20,
          ),
          SkillsProgressBar(
            title: "Python",
            rightPadding: 30,
          ),
          SkillsProgressBar(
            title: "Git",
            rightPadding: 40,
          ),
          const Text(
            "Languages",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
          ),
          SkillsProgressBar(
            title: "English",
            rightPadding: 10,
          ),
          SkillsProgressBar(
            title: "Korean",
            rightPadding: 20,
          ),
          SkillsProgressBar(
            title: "Russian",
            rightPadding: 60,
          ),
          SkillsProgressBar(
            title: "Uzbek",
            rightPadding: 0,
          ),
        ],
      ),
    );
  }
}
