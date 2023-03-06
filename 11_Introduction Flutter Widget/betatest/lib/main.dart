import 'package:betatest/clock.dart';
import 'package:betatest/content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: true,
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Flutter Demo Homepage'),
          backgroundColor: Colors.transparent,
        ),

          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DigitalClock(),
              ],
            ),
          ),

          /*         
          child: ListView(
          children: [
            Contents(),
          ],
        ) */
        )
    );
  }
}