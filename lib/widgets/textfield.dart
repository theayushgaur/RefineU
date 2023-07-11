import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String headerText;
  final controller;
  final bool obsqureText;
  const MyTextField(
      {super.key,
      required this.headerText,
      required this.obsqureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: TextField(
            style: const TextStyle(
              fontFamily: 'Cera Pro',
              fontSize: 17,
            ),
            controller: controller,
            obscureText: obsqureText,
            decoration: InputDecoration(
              // prefixIcon: Icon(
              //   Icons.search,
              //   size: 22,
              // ),

              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10),
              hintText: headerText,
              hintStyle: const TextStyle(
                fontSize: 17,
                fontFamily: 'Cera Pro',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
