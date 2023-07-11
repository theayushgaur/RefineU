// ignore: avoid_web_libraries_in_flutter

import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/register_page.dart';
import 'package:course_project/widgets/button.dart';
import 'package:course_project/widgets/square_tile.dart';
import 'package:course_project/widgets/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {
    // showDialog(
    //     context: context,
    //     builder: (context) {
    //       return const Center(
    //         child: CircularProgressIndicator(),
    //       );
    //     },
    //     );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

//wrong email message
  void wrongEmailMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Pallete.mainfontColor,
            title: Text(
              'Incorrect Email',
              style: TextStyle(
                fontFamily: 'Cera Pro',
              ),
            ),
          );
        });
  }

  //wrong Password
  void wrongPasswordMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            backgroundColor: Pallete.mainfontColor,
            title: Text(
              'Incorrect Password',
              style: TextStyle(
                fontFamily: 'Cera Pro',
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 25,
                ),
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Pallete.mainfontColor,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Hello Again!",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Cera Pro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Please Login for further process :)',
                  style: TextStyle(
                    fontFamily: 'Cera Pro',
                    fontSize: 17,
                  ),
                ),
                const SizedBox(height: 25),
                //email textfield
                MyTextField(
                  headerText: 'Email Id',
                  obsqureText: false,
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                  headerText: 'Password',
                  obsqureText: true,
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forget Password',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                SignButton(
                  nameText: 'SignIn',
                  onTap: signUserIn,
                ),

                const SizedBox(
                  height: 40,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or Continue With',
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(imagePath: 'assets/images/apple-2.png')
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('No a member? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const RegisterPage(),
                            ));
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                          color: Pallete.mainfontColor,
                          fontFamily: 'Cera Pro',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
// } MaterialPageRoute(
//                 builder: (BuildContext context) => const DisplayScreen());

// return Scaffold(
    //   backgroundColor: Pallete.mainBg,
    //   body: Padding(
    //     padding: const EdgeInsets.symmetric(vertical: 80),
    //     child: Image.asset(
    //       'assets/images/Digital presentation-amico.png',
    //       width: 200,
    //       height: 200,
    //     ),
    //   ),
    // );


      // // backgroundColor: Palette.mainBg,
      // body: Column(
      //   children: [
      //     LayoutBuilder(
      //       builder: (BuildContext context, BoxConstraints constraints) {
      //         return Padding(
      //           padding: EdgeInsets.only(
      //             top: MediaQuery.of(context).size.height * 0.1 -
      //                 80, // Adjust the top padding as needed
      //           ),
      //           child: Center(
      //             child: FractionallySizedBox(
      //               widthFactor: 0.8, // Adjust the width factor as needed
      //               heightFactor: 0.8, // Adjust the height factor as needed
      //               child: Image.asset(
      //                 'assets/images/Digital presentation-amico.png',
      //                 fit: BoxFit.contain,
      //               ),
      //             ),
      //           ),
      //         );
      //       },
      //     ),
      //     Text('Hi')
      //   ],