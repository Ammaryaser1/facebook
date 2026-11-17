import 'dart:async';
import 'package:facebook/facebook/app_colors.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/logo.png",
              width: 100,
              height: 100,
            ),

            const Spacer(),

            const Text(
              "From",
              style: TextStyle(
                color: AppColors.graycolor,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            Image.asset(
              "assets/images/meta.png",
              width: 90,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}