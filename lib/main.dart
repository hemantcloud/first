import 'package:first/activities/splash_screen.dart';
import 'package:first/testing.dart';
import 'package:flutter/material.dart';
import 'package:first/testing.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'roboto',
        // primarySwatch: Colors.deepOrange,
        // primarySwatch: Color(0xFFF54258),
      ),
      // theme: ThemeData(
      //   textTheme: GoogleFonts.robotoTextTheme(
      //   ),
      // ),
      title: 'Ecommerce App',
      home: const Splashscreen(),
      // home: Test(),
    );
  }
}
