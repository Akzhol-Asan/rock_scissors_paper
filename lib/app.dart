import 'package:flutter/material.dart';
import 'package:home_work_25/screens/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(255, 234, 0, 1),
        body: MainScreen(),
      ),
    );
  }
}
