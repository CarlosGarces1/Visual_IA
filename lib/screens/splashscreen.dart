import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_ml_kit_example/screens/menu.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2), // Change the duration as per your requirement
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              Menu(), // Replace HomeScreen() with your app's main screen
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 254, 254, 254),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 70, 180, 180),
        child: Center(
            child: Image.asset('assets/fotos/logosplash.png', scale: 1.6)),
      ),
    );
  }
}
