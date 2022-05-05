import 'package:flutter/material.dart';
import 'package:web_project/screens/ui_screens/max_desctop.dart';
import 'package:web_project/screens/widgets/aboutme_education.dart';
import 'package:web_project/screens/widgets/expertise_language.dart';
import 'package:web_project/screens/widgets/init_intro.dart';
import 'package:web_project/screens/widgets/my_profile_picture.dart';
import 'package:web_project/screens/widgets/portfolio_boxes.dart';
import 'package:web_project/screens/widgets/portfolio_texts.dart';
import 'package:web_project/screens/widgets/skills_boxes.dart';
import 'package:web_project/screens/widgets/skills_texts.dart';
import 'package:web_project/screens/widgets/text_button.dart';

class MobileUi extends StatelessWidget {
  const MobileUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        color: Colors.white38,
        width: MediaQuery.of(context).size.width * 0.5,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: MediaQuery.of(context).size.height * 0.1,
        ),
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButtonWidget(onTap: () {}, text: "Home"),
            TextButtonWidget(onTap: () {}, text: "Contributors"),
            TextButtonWidget(onTap: () {}, text: "About me"),
            TextButtonWidget(onTap: () {}, text: "Services"),
            TextButtonWidget(onTap: () {}, text: "Portfolio"),
            TextButtonWidget(onTap: () {}, text: "Contact"),
          ],
        ),
      ),
      endDrawerEnableOpenDragGesture: true,
      appBar: AppBar(
        title: const Text("My Portfolio"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width < 1370 ? 50 : 150,
              vertical: MediaQuery.of(context).size.height * 0.07,
            ),
            child: Column(
              children: [
                const MyIntro(),
                const MySkills(),
                // ServicesPart(),

                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: PortfolioTexts(textSize: 35),
                ),
                PortfolioBoxes(
                  height: 0.8,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  child: SkillsTexts(size: 35),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: SkillsBoxes(),
                ),
                ContactPart(
                  width: 0.6,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MySkills extends StatelessWidget {
  const MySkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          AboutMeEducation(),
          SizedBox(
            height: 30,
          ),
          LanguageExpertise(),
        ],
      ),
    );
  }
}

class MyIntro extends StatelessWidget {
  const MyIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // My image

        MyProfilePicture(
          height: 600,
          width: 500,
        ),
        const SizedBox(
          height: 30,
        ),

        Initail_Intro_me(
          width: double.infinity,
          size: 50,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
