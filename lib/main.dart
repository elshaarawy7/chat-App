import 'package:chat_app/pages/logIn.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const chatApp());
}

class chatApp extends StatelessWidget {
  const chatApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: LoginScreen(),
    );
  }
}
