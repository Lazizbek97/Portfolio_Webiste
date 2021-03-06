import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_project/core/utils/size_config.dart';
import 'package:web_project/screens/widgets/aboutme_education.dart';
import 'package:web_project/screens/widgets/expertise_language.dart';
import 'package:web_project/screens/widgets/init_intro.dart';
import 'package:web_project/screens/widgets/my_profile_picture.dart';
import 'package:web_project/screens/widgets/portfolio_boxes.dart';
import 'package:web_project/screens/widgets/portfolio_texts.dart';
import 'package:web_project/screens/widgets/skills_boxes.dart';
import 'package:web_project/screens/widgets/skills_texts.dart';
import 'package:web_project/screens/widgets/text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MaxDesctopUI extends StatelessWidget {
  const MaxDesctopUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FirstUiPage(),
              const AboutMePart(),
              const ServicesPart(),
              const StacksAndSevices(),
              ContactPart(
                width: 0.4,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContactPart extends StatelessWidget {
  ContactPart({Key? key, required this.width}) : super(key: key);

  double width;

  void _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);

    if (!await launchUrl(_url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Contact.",
            style: TextStyle(
              fontSize: 65,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Text(
            "Follow me on Social Medias or Connect for any Project inqueries",
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    _launchUrl(
                        "mailto:laziz.fayziev@mail.cu?subject=newMessage&body=messageBody");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl("https://www.facebook.com/lazizbek.fayziyev.7");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl("https://t.me/lazizbek_blog");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.telegram,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl(
                        "https://www.linkedin.com/in/lazizbek-fayziev-977600177");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _launchUrl("https://medium.com/@lazizbekfayziyev");
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.medium,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Copyright ??2022 All rights reserved | This template is made with  by Lazizbek",
            style: TextStyle(
              fontSize: 17,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class StacksAndSevices extends StatelessWidget {
  const StacksAndSevices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width < 1370 ? 50 : 150,
        vertical: MediaQuery.of(context).size.height * 0.07,
      ),
      child: Column(
        children: [
          SizedBox(
            width: 875,
            child: SkillsTexts(size: 65),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.6,
            child: SkillsBoxes(),
          ),
        ],
      ),
    );
  }
}

class ServicesPart extends StatelessWidget {
  const ServicesPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: getWidth(875),
            child: PortfolioTexts(textSize: 65),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(100), vertical: getHeight(50)),
            child: PortfolioBoxes(height: 0.6),
          ),
        ],
      ),
    );
  }
}

class AboutMePart extends StatelessWidget {
  const AboutMePart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width < 1370 ? 50 : 150,
        vertical: MediaQuery.of(context).size.height * 0.07,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          AboutMeEducation(),
          LanguageExpertise(),
        ],
      ),
    );
  }
}

class FirstUiPage extends StatelessWidget {
  const FirstUiPage({
    Key? key,
  }) : super(key: key);

  void _launchUrl(String url) async {
    final Uri _url = Uri.parse(url);

    if (!await launchUrl(_url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: getHeight(1180),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width < 1370 ? 50 : 150,
              vertical: getWidth(37),
            ),
            child: Row(
              children: [
                TextButtonWidget(onTap: () {}, text: "Home"),
                TextButtonWidget(onTap: () {}, text: "Contributors"),
                TextButtonWidget(onTap: () {}, text: "About me"),
                TextButtonWidget(onTap: () {}, text: "Services"),
                TextButtonWidget(onTap: () {}, text: "Portfolio"),
                TextButtonWidget(onTap: () {}, text: "Contact"),
                const Spacer(),
                MediaQuery.of(context).size.width > 830
                    ? SizedBox(
                        height: 52,
                        width:
                            MediaQuery.of(context).size.width < 910 ? 100 : 180,
                        child: ElevatedButton(
                          onPressed: () {
                            _launchUrl("https://github.com/Lazizbek97");
                          },
                          child: AutoSizeText(
                            "Portfolio Here".toUpperCase(),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width < 1370 ? 50 : 150,
                vertical: getWidth(60)),
            child: MediaQuery.of(context).size.width < 1045
                ? Column(
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
                        size: 90,
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Main description content

                      Initail_Intro_me(
                        width: 400,
                        size: 90,
                      ),
                      // My image

                      MyProfilePicture(
                        height: 600,
                        width: 400,
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
