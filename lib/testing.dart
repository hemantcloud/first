import 'package:first/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            _launchUrl();
          },
          child: Container(
            color: Colors.red,
            width: 100.0,
            height: 30.0,
            alignment: Alignment.center,
            child: const Text(
              'Test',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    String url = 'https://www.twitter.com';
    var urlLaunchable = await canLaunch(url); //canLaunch is from url_launcher package
    if(urlLaunchable){
      await launch(url); //launch is from url_launcher package to launch URL
    }else{
      print("URL can't be launched.");
    }
  }
}
