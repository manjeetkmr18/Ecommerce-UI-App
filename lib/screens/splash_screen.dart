import 'dart:async';

import 'package:ecom_group_project/screens/login/login_screen.dart';
import 'package:ecom_group_project/utils/constants.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  static String routeName = "/splash";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushNamed(context, LoginScreen.routeName));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
              decoration: const BoxDecoration(
          color: Colors.white,
              ),
              child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(Constants.appName,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))
          ],
              ),
            ),
        ));
  }
}
