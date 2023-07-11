import 'package:course_project/constants/color.dart';
import 'package:course_project/screens/display_screen.dart';
import 'package:course_project/widgets/button.dart';
import 'package:course_project/widgets/signup_controller.dart';
import 'package:course_project/widgets/square_tile.dart';
import 'package:course_project/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  // final confirmPasswordController = TextEditingController();
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  final passwordController = TextEditingController();

  // void signUserUp() async {
  //   try {
  //     if (passwordController.text == confirmPasswordController.text) {
  //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //           email: usernameController.text, password: passwordController.text);
  //     } else {
  //       passwordNotSameMessage();
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       wrongEmailMessage();
  //     } else if (e.code == 'wrong-password') {
  //       wrongPasswordMessage();
  //     }
  //   }
  // }

  // void wrongEmailMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return const AlertDialog(
  //           backgroundColor: Pallete.mainfontColor,
  //           title: Text(
  //             'Incorrect Email',
  //             style: TextStyle(
  //               fontFamily: 'Cera Pro',
  //             ),
  //           ),
  //         );
  //       });
  // }

  // //wrong Password
  // void wrongPasswordMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return const AlertDialog(
  //           backgroundColor: Pallete.mainfontColor,
  //           title: Text(
  //             'Incorrect Password',
  //             style: TextStyle(
  //               fontFamily: 'Cera Pro',
  //             ),
  //           ),
  //         );
  //       });
  // }

  // void passwordNotSameMessage() {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return const AlertDialog(
  //           backgroundColor: Pallete.mainfontColor,
  //           title: Text(
  //             'Passwords dont match',
  //             style: TextStyle(
  //               fontFamily: 'Cera Pro',
  //             ),
  //           ),
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainBg,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Icon(
                    Icons.lock,
                    size: 50,
                    color: Pallete.mainfontColor,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Hello User!",
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
                    'Lets create an account for you :)',
                    style: TextStyle(
                      fontFamily: 'Cera Pro',
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 25),

                  //email textfield
                  MyTextField(
                    headerText: 'Full Name',
                    obsqureText: false,
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
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
                    height: 25,
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
                    nameText: 'SignUp',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(
                            usernameController.text.trim(),
                            passwordController.text.trim());
                      }
                    },
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
                      const Text('Already have an account? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const DisplayScreen(),
                              ));
                        },
                        child: const Text(
                          'Login Now',
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
      ),
    );
  }
}
