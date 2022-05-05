import 'package:flutter/material.dart';
import 'package:web_project/core/utils/main_theme.dart';
import 'package:web_project/screens/ui_screens/max_desctop.dart';
import 'package:web_project/screens/ui_screens/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Pesume Wesite',
        debugShowCheckedModeBanner: false,
        theme: MainTheme.light,
        home: const Shell());
  }
}

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.minWidth);
        print("Media query: ${MediaQuery.of(context).size.width}");
        if (constraints.maxWidth > 1060) {
          return const MaxDesctopUI();
        } else if (constraints.maxWidth <= 1060 &&
            constraints.maxWidth >= 800) {
          return const MaxDesctopUI();
        } else {
          return const MobileUi();
        }
      },
    );

    // ResponsiveWidget.isLargeScreen(context)
    //     ? const MaxDesctopUI()
    //     : ResponsiveWidget.isMediumScreen(context)
    //         ? Container(
    //             height: double.infinity,
    //             width: double.infinity,
    //             color: Colors.amber,
    //           )
    //         : Container(
    //             height: double.infinity,
    //             width: double.infinity,
    //             color: Colors.blueAccent,
    //           );
  }
}

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    required this.mediumScreen,
    required this.smallScreen,
  }) : super(key: key);
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints.minWidth);
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1200 &&
            constraints.maxWidth >= 800) {
          return mediumScreen;
        } else {
          return smallScreen;
        }
      },
    );
  }
}
