import 'package:assignment_2_part_1/pages/home_screeen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String pageName ='loginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 92, 162),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Spacer(flex: 3,),
            const Icon(
              Icons.facebook_rounded,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  hintText: 'Email or Phone',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70)),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.sizeOf(context).width,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(129, 140, 177, 240),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.pageName);
                  },
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
          const Spacer(flex: 2,),
           const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Sign Up for Facebook',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forget Password?',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
               
              ],
            ),
          const SizedBox(height: 20,)
           
          ],
        ),
      ),
    );
  }
}
