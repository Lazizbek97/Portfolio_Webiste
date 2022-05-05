import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_project/core/utils/size_config.dart';
import 'package:web_project/screens/widgets/aboutme_education.dart';
import 'package:web_project/screens/widgets/expertise_language.dart';
import 'package:web_project/screens/widgets/init_intro.dart';
import 'package:web_project/screens/widgets/my_profile_picture.dart';
import 'package:web_project/screens/widgets/text_button.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            children:  [
              FirstUiPage(),
              AboutMePart(),
              ServicesPart(),
              StacksAndSevices(),
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
   ContactPart({
    Key? key,
    required this.width
  }) : super(key: key);

  double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
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
            width: MediaQuery.of(context).size.width *width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.facebook,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.telegram,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.linkedin,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.medium,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "Copyright ©2022 All rights reserved | This template is made with  by Lazizbek",
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
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.8,
            child: const SkillsBoxes(),
          ),
        ],
      ),
    );
  }
}

class SkillsBoxes extends StatelessWidget {
  const SkillsBoxes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        mainAxisExtent: 300,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10.0),
          color: Colors.amber,
        );
      },
      itemCount: 6,
    );
  }
}

class SkillsTexts extends StatelessWidget {
  SkillsTexts({Key? key, required this.size}) : super(key: key);

  double size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Stacks & Services",
          style: TextStyle(fontSize: size, fontWeight: FontWeight.w600),
        ),
        const Text(
          "What i'am expert in and would offer you",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
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
        children: [
          SizedBox(
            width: getWidth(875),
            child: PortfolioTexts(textSize: 65),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(100), vertical: getHeight(50)),
            child: PortfolioBoxes(height: 0.8),
          ),
        ],
      ),
    );
  }
}

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
          "Our team members are experts in all facets of the design industry including: print design, illustration, branding, identity and more.",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class PortfolioBoxes extends StatelessWidget {
  PortfolioBoxes({Key? key, required this.height}) : super(key: key);

  double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: double.infinity,
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            const QuiltedGridTile(2, 2),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => Container(
                  child: Text(index.toString()),
                  color: Colors.amber,
                ),
            childCount: 10),
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
      height: MediaQuery.of(context).size.height * 0.8,
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
                SizedBox(
                  height: getHeight(52),
                  width: getWidth(180),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Portfolio Here".toUpperCase(),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ),
                  ),
                )
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
