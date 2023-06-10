import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pet_shop/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen())));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
/*            height: 200,
            width: 200,*/
            child: Image.asset(
              "images/logo paw.png",
              /* height: 30,
              width: 30,*/
            ),
          ),
        ],
      ),
    );
  }
}







