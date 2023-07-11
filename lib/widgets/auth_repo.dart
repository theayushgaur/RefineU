import 'package:course_project/screens/register_page.dart';
import 'package:course_project/screens/search_page.dart';
import 'package:course_project/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepo extends GetxController {
  static AuthenticationRepo get instance => Get.find();
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> FirebaseUser;

  @override
  void onReady() {
    FirebaseUser = Rx<User?>(_auth.currentUser);
    FirebaseUser.bindStream(_auth.userChanges());
    ever(FirebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const SplashScreen())
        : Get.offAll(() => const SearchScreen());
  }

  void createUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser.value != null
          ? Get.offAll(() => const SearchScreen())
          : Get.offAll(() => const RegisterPage());
    } on FirebaseAuthException catch (e) {
    } catch (e) {}
  }

  void loginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (e) {}
  }

  Future<void> logout() async => await _auth.signOut();
}
