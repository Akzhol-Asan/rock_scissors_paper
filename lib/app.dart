import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_work_25/screens/game_screen.dart';
import 'package:home_work_25/screens/main_screen.dart';
import 'package:home_work_25/screens/result_screen.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var currentScreen = 'main';
  String? pressedImage;
  String? randomImage;
  late String resultTitle;
  final List<String> images = [
    'assets/images/rock.png',
    'assets/images/scissors.png',
    'assets/images/paper.png',
  ];
  final List<String> wonAndLost = [
    'You Won!',
    'You Lost!',
    'Dead Head',
    'huh',
  ];

  void mainButtonPressed() {
    setState(() {
      if (currentScreen == 'main') {
        currentScreen = 'game';
      } else if (currentScreen == 'result') {
        currentScreen = 'game';
      } else {
        currentScreen = 'main';
      }
    });
  }

  void optionButtonPressed(String imageAddress) {
    setState(() {
      pressedImage = imageAddress;
      currentScreen = 'result';
      randomImage = images[Random().nextInt(images.length)];

      if (imageAddress == 'assets/images/rock.png' &&
          randomImage == 'assets/images/rock.png') {
        resultTitle = wonAndLost[2];
      } else if (imageAddress == 'assets/images/scissors.png' &&
          randomImage == 'assets/images/scissors.png') {
        resultTitle = wonAndLost[2];
      } else if (imageAddress == 'assets/images/paper.png' &&
          randomImage == 'assets/images/paper.png') {
        resultTitle = wonAndLost[2];
      } else if (imageAddress == 'assets/images/rock.png' &&
          randomImage == 'assets/images/paper.png') {
        resultTitle = wonAndLost[1];
      } else if (imageAddress == 'assets/images/rock.png' &&
          randomImage == 'assets/images/scissors.png') {
        resultTitle = wonAndLost[0];
      } else if (imageAddress == 'assets/images/scissors.png' &&
          randomImage == 'assets/images/rock.png') {
        resultTitle = wonAndLost[1];
      } else if (imageAddress == 'assets/images/scissors.png' &&
          randomImage == 'assets/images/paper.png') {
        resultTitle = wonAndLost[0];
      } else if (imageAddress == 'assets/images/paper.png' &&
          randomImage == 'assets/images/scissors.png') {
        resultTitle = wonAndLost[1];
      } else if (imageAddress == 'assets/images/paper.png' &&
          randomImage == 'assets/images/rock.png') {
        resultTitle = wonAndLost[0];
      } else {
        resultTitle = wonAndLost[3];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentScreen == 'main') {
      screen = MainScreen(
        onPressed: mainButtonPressed,
      );
    } else if (currentScreen == 'game') {
      screen = GameScreen(
        onPressed: (String imageAddress) => optionButtonPressed(imageAddress),
      );
    } else if (currentScreen == 'result') {
      screen = ResultScreen(
        onPressed: mainButtonPressed,
        pressedImage: pressedImage,
        randomImage: randomImage,
        resultTitle: resultTitle,
      );
    } else {
      screen = MainScreen(
        onPressed: mainButtonPressed,
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 234, 0, 1),
        body: screen,
      ),
    );
  }
}
