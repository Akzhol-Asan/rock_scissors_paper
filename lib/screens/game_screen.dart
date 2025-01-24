import 'package:flutter/material.dart';
import 'package:home_work_25/widgets/option_button.dart';

class GameScreen extends StatelessWidget {
  final Function(String) onPressed;

  const GameScreen({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              'Choose your option!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50),
            Column(
              children: [
                OptionButton(
                  imageAddress: 'assets/images/rock.png',
                  onPressed: () => onPressed('assets/images/rock.png'),
                ),
                SizedBox(height: 50),
                OptionButton(
                  imageAddress: 'assets/images/scissors.png',
                  onPressed: () => onPressed('assets/images/scissors.png'),
                ),
                SizedBox(height: 50),
                OptionButton(
                  imageAddress: 'assets/images/paper.png',
                  onPressed: () => onPressed('assets/images/paper.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
