import 'package:course_project/firebase_options.dart';
import 'package:course_project/screens/splash_screen.dart';
import 'package:course_project/widgets/auth_repo.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'constants/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepo()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RefineU',
      // theme: ThemeData.light(useMaterial3: true).copyWith(
      //   scaffoldBackgroundColor: Pallete.mainBg,
      // ),
      home: SplashScreen(),
    );
  }
}
