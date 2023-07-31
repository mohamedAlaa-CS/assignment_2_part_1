import 'package:assignment_2_part_1/pages/home_screeen/home_screen.dart';
import 'package:assignment_2_part_1/pages/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     // home: LoginScreen(),
      initialRoute: LoginScreen.pageName,
      routes: {
        LoginScreen.pageName :(context) => const LoginScreen(),
        HomeScreen.pageName :(context) => const HomeScreen(),
      },
    );
  }
}
