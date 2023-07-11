import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/search_page.dart';
import 'package:flutter/material.dart';

class InfoPage6 extends StatelessWidget {
  const InfoPage6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainBg,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      // shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Pallete.cardColor2,
                        border: Border.all(
                          color: Pallete.cardColor2,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9),
                                  border: Border.all(
                                    color: Colors.white,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  'assets/images/ibm.png',
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'IBM',
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Cera Pro',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'USA',
                            style: TextStyle(
                              fontFamily: 'Cera Pro',
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17.0, top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Android\nDevelopment',
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Cera Pro',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          '\$ 120',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Cera Pro',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Pallete.cardColor2,
                              borderRadius: BorderRadius.circular(9),
                              border: Border.all(
                                color: Pallete.cardColor2,
                              )),
                          child: const Center(
                            child: Text(
                              '3 Months',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Cera Pro',
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                    color: Pallete.mainfontColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Pallete.cardColor2,
                    )),
                child: const Center(
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the course',
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio ac diam consequat venenatis. Vivamus elementum facilisis ex, id efficitur nisi consequat ut. Donec tincidunt pharetra enim, id molestie metus tristique eget. Nulla facilisi. Nulla facilisis ultricies nunc '),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Things you will learn',
                      style: TextStyle(
                        fontFamily: 'Cera Pro',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio ac diam consequat venenatis. Vivamus elementum facilisis ex, id efficitur nisi consequat ut. Donec tincidunt pharetra enim, id molestie metus tristique eget. Nulla facilisi. Nulla facilisis ultricies nunc '),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio ac diam consequat venenatis. Vivamus elementum facilisis ex, id efficitur nisi consequat ut. Donec tincidunt pharetra enim, id molestie metus tristique eget. Nulla facilisi. Nulla facilisis ultricies nunc '),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio ac diam consequat venenatis. Vivamus elementum facilisis ex, id efficitur nisi consequat ut. Donec tincidunt pharetra enim, id molestie metus tristique eget. Nulla facilisi. Nulla facilisis ultricies nunc '),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et odio ac diam consequat venenatis. Vivamus elementum facilisis ex, id efficitur nisi consequat ut. Donec tincidunt pharetra enim, id molestie metus tristique eget. Nulla facilisi. Nulla facilisis ultricies nunc '),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Pallete.mainfontColor,
                    ),
                    child: const Center(
                        child: Text(
                      'Apply Now',
                      style: TextStyle(
                        color: Pallete.mainBg,
                        fontFamily: 'Cera Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    )),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
