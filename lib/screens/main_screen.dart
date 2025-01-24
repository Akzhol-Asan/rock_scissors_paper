import 'package:flutter/material.dart';
import 'package:home_work_25/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              'The Ultimate RPS Battle',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 150),
            Image.asset('assets/images/main_banner.png'),
            SizedBox(height: 150),
            Button(buttonText: 'START GAME'),
          ],
        ),
      ),
    );
  }
}
