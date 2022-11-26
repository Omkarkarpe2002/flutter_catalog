import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
//We are importing this package because we are going to use material library.
//every program's entry point in the most of languages in the main function.
//Similary in dart and flutter is void main function it's the entry point to the
//Flutter application.
//In the main function we are calling an runApp method to which we are passing an
//Widget of our application.
//Everything in flutter is widget.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //myApp is a class which is extending the statelessWidget.
  const MyApp({super.key});
  //This is the constructor of our class

  @override
  //This is the method we are calling again and again when we are refreshing our application.
  //build method contains most of our user interface part.
  Widget build(BuildContext context) {
    //We cannot directly use container becuase we are returning an application so we have
    //to return an application like materialapp , cupertinoapp , etc.
    return MaterialApp(
      //We are wrapping container with material library because we are trying to give it the feel of material application
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
          brightness: Brightness.dark, primarySwatch: Colors.blueGrey),
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/Login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    );
  }
}

void bringVegetables({int rupees = 100}) {
  //When we put curlly braces we treat the rupees as optional paramter
  //Like when we don't especify rupess it will take rupess to default vaule of 100.
  //But if we specify like (rupess : 50) it will take the value of rupees as 50
}
