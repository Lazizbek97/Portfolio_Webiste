import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:web_project/core/utils/size_config.dart';
import 'package:web_project/screens/widgets/text_button.dart';

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
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: getWidth(875),
                      child: Column(
                        children: [
                          Text(
                            "Services.",
                            style: TextStyle(
                                fontSize: getHeight(65),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Our team members are experts in all facets of the design industry including: print design, illustration, branding, identity and more.",
                            style: TextStyle(
                              fontSize: getHeight(20),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getWidth(100), vertical: getHeight(50)),
                      child: SizedBox(
                        height: getHeight(500),
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              height: getHeight(450),
                              width: getWidth(400),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              // decoration: BoxDecoration(
                              //   image: DecorationImage(
                              //     fit: BoxFit.cover,
                              //     image: NetworkImage(
                              //         "https://source.unsplash.com/random/$index"),
                              //   ),
                              // ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.width < 1370
                                            ? 130
                                            : 200,
                                    width: double.infinity,
                                    child: Image.network(
                                      'https://source.unsplash.com/random/$index',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Text(
                                    "WEB Design",
                                    style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      "Why money's in that office,right If she start giving me some bullshit about it ain'tthere someplace or anywhere.",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
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
    return SizedBox(
      // height: getHeight(1180),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: getWidth(875),
            child: Column(
              children: [
                Text(
                  "About me",
                  style: TextStyle(
                      fontSize: getHeight(65), fontWeight: FontWeight.w600),
                ),
                Text(
                  "I'm Lazizbek Fayziev and i do web design, Graphic Design, User Experiences. habitant et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.",
                  style: TextStyle(
                    fontSize: getHeight(20),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(100), vertical: getHeight(50)),
              child: SizedBox(
                height: MediaQuery.of(context).size.height *0.6,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return Container(
                        height: getHeight(450),
                        width: MediaQuery.of(context).size.width < 1370
                            ? 200
                            : getWidth(400),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://source.unsplash.com/random/$index"),
                          ),
                        ),
                      );
                    }),
              )),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Main description content

                SizedBox(
                  // height: getHeight(557),
                  width: MediaQuery.of(context).size.width < 1370 ? 400 : 556,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AutoSizeText(
                        "Hello Flutter Folks! I'm ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      AutoSizeText(
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
                          fontSize: 90,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AutoSizeText(
                        "Since creative designers often interact with creative teams, managers and clients, they need strong communication skills.",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                // My image

                Container(
                  height: MediaQuery.of(context).size.width < 1370 ? 600 : 882,
                  width: MediaQuery.of(context).size.width < 1420 ? 400 : 552,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://source.unsplash.com/random"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
