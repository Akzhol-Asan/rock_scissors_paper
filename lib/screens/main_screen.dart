import 'package:flutter/material.dart';
import 'package:home_work_25/widgets/main_button.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback onPressed;

  const MainScreen({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              'The Ultimate RSP Battle',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 150),
            Image.asset('assets/images/main_banner.png'),
            SizedBox(height: 150),
            Button(
              buttonText: 'START GAME',
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
