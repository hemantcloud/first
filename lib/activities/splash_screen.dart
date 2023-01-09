import 'dart:async';

import 'package:first/activities/login.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Login()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF54258),
      body: Center(
        child: Image.asset('assets/images/splash_icon.png'),
      ),
    );
  }
}

