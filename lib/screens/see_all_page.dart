import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/info_screen2.dart';
import 'package:course_project/screens/info_screen3.dart';
import 'package:course_project/screens/search_page.dart';
import 'package:flutter/material.dart';

import '../widgets/card2_view_list.dart';
import 'info_screen.dart';
import 'info_screen4.dart';
import 'info_screen5.dart';
import 'info_screen6.dart';
import 'info_screen7.dart';
import 'info_screen8.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({super.key});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainBg,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 55, 20, 0),
        child: Container(
          color: Pallete.mainBg,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const SearchScreen()),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 25,
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'All Popular Courses',
                        style: TextStyle(
                          fontFamily: 'Cera Pro',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Flutter Advance Development',
                        subtitleText: '4 Months',
                        rateOfCourse: '\$150',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/udemy-2.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage2()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Python Advance Development',
                        subtitleText: '8 Months',
                        rateOfCourse: '\$250',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/coursera.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage3()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Dotnet Advanced Development',
                        subtitleText: '12 Months',
                        rateOfCourse: '\$550',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/google-5.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage4()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'UI/UX Development',
                        subtitleText: '6 Months',
                        rateOfCourse: '\$100',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/coursera.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage5()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Java Advanced',
                        subtitleText: '12 Months',
                        rateOfCourse: '\$150',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/udemy-2.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage6()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Android Development',
                        subtitleText: '3 Months',
                        rateOfCourse: '\$120',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/ibm.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage7()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'Web Development',
                        subtitleText: '8-10 Months',
                        rateOfCourse: '\$200',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/tcs.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const InfoPage8()),
                        );
                      },
                      child: const Card2List(
                        titleText: 'goLang Development',
                        subtitleText: '12 Months',
                        rateOfCourse: '\$400',
                        containerColor: Pallete.cardColor2,
                        imagePlace: 'assets/images/google-5.png',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
