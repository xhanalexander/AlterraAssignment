import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Selamat Datang di Aplikasi",
            body: "Aplikasi ini memberikan informasi mengenai kampus dan jurusan yang ada di Indonesia",
            image: Image.asset(
              "assets/StudentRead.png",
              height: 250,
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
          PageViewModel(
            title: "Segera Daftar Sekarang",
            body: "Untuk mendapatkan informasi mengenai kampus dan jurusan yang ada di Indonesia",
            image: Image.asset(
              "assets/Write.png",
              height: 300,
            ),
            decoration: const PageDecoration(
              pageColor: Colors.white,
              bodyTextStyle: TextStyle(color: Colors.black),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
            ),
          ),
        ],
        onDone: () {
          // When done button is press
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showSkipButton: false,
        skip: const Icon(Icons.skip_next),
        next: const Icon(Icons.arrow_forward),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        // globalBackgroundColor: const Color(0xFF0071F2),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeColor: Color(0xFF0071F2),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
      )
    );
  }
}
