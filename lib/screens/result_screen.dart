import 'package:flutter/material.dart';
import 'package:home_work_25/widgets/main_button.dart';

class ResultScreen extends StatelessWidget {
  final VoidCallback onPressed;
  final String? pressedImage;
  final String? randomImage;
  final String resultTitle;

  const ResultScreen({
    super.key,
    required this.onPressed,
    this.pressedImage,
    this.randomImage,
    required this.resultTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Text(
              resultTitle,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 32,
              ),
            ),
            SizedBox(height: 200),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (pressedImage != null)
                  Transform.scale(
                    scaleX: -1,
                    child: Image.asset(
                      pressedImage!,
                      width: 125,
                      height: 125,
                      fit: BoxFit.cover,
                    ),
                  ),
                SizedBox(width: 50),
                if (randomImage != null)
                  Image.asset(
                    randomImage!,
                    width: 125,
                    height: 125,
                    fit: BoxFit.cover,
                  ),
              ],
            ),
            SizedBox(height: 200),
            Button(
              buttonText: 'RESTART',
              onPressed: onPressed,
            ),
          ],
        ),
      ),
    );
  }
}
