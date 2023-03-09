import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'homepage.dart';
import 'cupertHome.dart';
import 'explores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  MyApssFlu()
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
    );
  } 
 
/* 
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinosDes()
    );
  }
 */  
}