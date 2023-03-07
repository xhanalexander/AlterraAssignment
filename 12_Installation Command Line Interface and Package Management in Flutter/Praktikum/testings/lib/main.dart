import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Contents(),
    );
  }
}

class Contents extends StatelessWidget {
  const Contents({super.key});
  final name = "Alexander";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Alterra"),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Hello my name is ",
            style: const TextStyle(fontSize: 24),
            children: <TextSpan>[
              TextSpan(text: name, style: const TextStyle( fontWeight: FontWeight.bold, fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
