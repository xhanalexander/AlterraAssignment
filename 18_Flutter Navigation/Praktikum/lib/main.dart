import 'package:flutter/material.dart';
import 'package:galleryapp/login.dart';
import 'homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery Show App',
      debugShowCheckedModeBanner: false,
/*       theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ), */
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginForms(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}