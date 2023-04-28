import 'dart:async';
import 'package:flutter/material.dart';

import 'dashboard/welcomepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const WelcomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: ElevatedButton(
          child: const Text('DRIVE CAST'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WelcomePage()),
            );
          },
        )));
  }
}
