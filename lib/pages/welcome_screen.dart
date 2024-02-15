import 'package:authentication_otp/pages/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:authentication_otp/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
          child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/welcome.png",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Welcome to",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Okra',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 234, 211, 8)),
                ),
                const SizedBox(height: 5),
                const Text(
                  "blinkit",
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Okra',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 8, 138, 13)),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Everything delivered in minutes.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: CustomButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      text: "Get Started"),
                )
              ]),
        ),
      )),
    );
  }
}
