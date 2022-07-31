import 'package:catalogapp/pages/homepage.dart';
import 'package:catalogapp/pages/loginpage.dart';
import 'package:catalogapp/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.w400),
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      darkTheme: ThemeData(brightness: Brightness.dark),
      //
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
