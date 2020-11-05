import 'package:flutter/material.dart';
import 'package:thinkr/screens/home_screen.dart';
import 'package:thinkr/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThinkR',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff000000),
        cursorColor: Colors.white,
        primarySwatch: Colors.blue,
        primaryColor: Color(0xff1C1D38),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
      //route
    );
  }
}
