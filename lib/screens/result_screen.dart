import 'package:flutter/material.dart';
import 'package:home_work_25/widgets/main_button.dart';
import 'package:home_work_25/widgets/option_button.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              'You Won!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scaleX: -1,
                  child: OptionButton(imageAddress: 'assets/images/rock.png'),
                ),
                OptionButton(imageAddress: 'assets/images/scissors.png'),
              ],
            ),
            SizedBox(height: 200),
            Button(buttonText: 'RESTART'),
          ],
        ),
      ),
    );
  }
}
