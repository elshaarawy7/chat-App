import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // log i time 
  Duration get LodingTime => const Duration(milliseconds: 2000);

  // log in 

  Future<String?>FeachUther(LoginData data){
    return Future.delayed(LodingTime).then((value) => null);
  }

  // forget paswoord

  Future<String?> recouverPassord(String data){
    return Future.delayed(LodingTime).then((value)=>null);
  } 

  // sing up

  Future<String?> singup(SignupData data){
    return Future.delayed(LodingTime).then((value)=>null);
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      onLogin: FeachUther, 
      onRecoverPassword:recouverPassord,
      onSignup: singup,
       );
  }
}