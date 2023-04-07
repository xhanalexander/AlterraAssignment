import 'package:flutter/material.dart';
import 'package:galleryapp/login.dart';
import 'homePage.dart';
import 'package:provider/provider.dart';
import 'imageDataView.dart' as image_view;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => image_view.imageInfo(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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