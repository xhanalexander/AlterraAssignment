import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: Contents(),
    );
  }
}

class Contents extends StatelessWidget {
  const Contents({super.key});
  final name = "Alexander";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Hello World"),
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: "Hello my name is ",
            style: const TextStyle(fontSize: 24, color: Colors.white),
            children: <TextSpan>[
              TextSpan(text: name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white)),
            ],
          ),
        ),
      ), 
    );
  }
}
