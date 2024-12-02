import 'package:flutter/material.dart';
import 'dart:async';
import 'package:twobytwo/Pages/homescreen.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Splashscreen.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
