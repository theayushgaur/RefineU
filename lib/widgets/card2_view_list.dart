import 'package:flutter/material.dart';

class Card2List extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final String imagePlace;
  final Color containerColor;
  final String rateOfCourse;
  const Card2List({
    super.key,
    required this.imagePlace,
    required this.containerColor,
    required this.titleText,
    required this.subtitleText,
    required this.rateOfCourse,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(
          color: containerColor,
        ),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(7),
      ),
      height: 80,
      width: 400,
      child: ListTile(
        leading: Image.asset(
          imagePlace,
          height: 40,
        ),
        title: Text(
          titleText,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Cera Pro',
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitleText,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Cera Pro',
          ),
        ),
        trailing: Text(
          rateOfCourse,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Cera Pro',
          ),
        ),
      ),
    );
  }
}
