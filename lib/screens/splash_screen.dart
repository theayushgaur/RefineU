import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/register_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainBg,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/Digital presentation-amico.png',
                  height: 350,
                  width: 350,
                ),
              ),
            ),
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Pallete.mainfontColor,
                border: Border.all(
                  color: Pallete.mainfontColor,
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 40.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'RefineU',
                        style: TextStyle(
                          color: Pallete.mainBg,
                          fontFamily: 'Cera Pro',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 8),
                    child: Text(
                      'Where Wisdom Meets Destiny,Unleashing Infinite Possibilities. Explore a wide range of cutting-edge topics, from coding and web development to artificial intelligence and cybersecurity. With interactive lessons, practical exercises, and expert guidance, take your tech skills to the next level and unlock exciting career opportunities.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Pallete.mainBg,
                        fontFamily: 'Cera Pro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const RegisterPage()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Pallete.mainBg,
                        ),
                        child: const Center(
                            child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Pallete.mainfontColor,
                            fontFamily: 'Cera Pro',
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
