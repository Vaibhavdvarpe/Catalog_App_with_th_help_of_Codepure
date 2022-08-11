import 'dart:async';

import 'package:catalogapp/pages/homepage.dart';
import 'package:catalogapp/pages/loginpage.dart';
import 'package:flutter/material.dart';

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
        Duration(microseconds: 1500000),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  Widget build(BuildContext context) {
    return Container(color: Colors.blueGrey, child: FlutterLogo(size: 1));
  }
}
