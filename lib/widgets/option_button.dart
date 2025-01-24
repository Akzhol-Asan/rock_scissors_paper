import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String imageAddress;
  const OptionButton({super.key, required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      onPressed: () {},
      child: Image.asset(
        imageAddress,
        width: 125,
        height: 125,
        fit: BoxFit.cover,
      ),
    );
  }
}
