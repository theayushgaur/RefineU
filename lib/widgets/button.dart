import 'package:flutter/material.dart';

import '../constants/color.dart';

class SignButton extends StatelessWidget {
  final Function()? onTap;
  final String nameText;
  const SignButton({super.key, required this.onTap, required this.nameText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Pallete.mainfontColor,
          ),
          child: Center(
              child: Text(
            nameText,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )),
        ),
      ),
    );
  }
}
