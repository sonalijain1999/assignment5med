import 'package:assignment5med/screens/FirstScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _State createState() =>  _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  FirstScreen(),
        ),

    );
  }
}
