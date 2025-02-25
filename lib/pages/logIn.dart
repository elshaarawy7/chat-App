import 'package:chat_app/pages/home_screan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loadingTime => const Duration(milliseconds: 2000);

  Future<String?> fetchUser(LoginData data, BuildContext context) {
    return Future.delayed(loadingTime).then((_) {
      // بعد تسجيل الدخول بنجاح
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  ChatScreen()),
      );
      return null;
    });
  }

  Future<String?> recoverPassword(String data) {
    return Future.delayed(loadingTime).then((_) => null);
  }

  Future<String?> signup(SignupData data) {
    return Future.delayed(loadingTime).then((_) => null);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      theme: LoginTheme(primaryColor: Colors.teal),
      onLogin: (data) => fetchUser(data, context), // تمرير الـ context
      onRecoverPassword: recoverPassword,
      onSignup: signup,
    );
  }
}

