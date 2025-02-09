import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // log i time 
  Duration get LodingTime => const Duration(milliseconds: 2000);

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      onLogin: onLogin, 
      onRecoverPassword:  onRecoverPassword ,
       )
  }
}