import 'dart:html';

import 'package:betatest/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

/* 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('NewApp',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                width: 400,
                height: 200,
                color: Colors.red,
                child: const Center(
                    child: Text('Container 1',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: const Text('Container 2',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: const Text('Container 3',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 
 */

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: true,
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Headlines'),
        ),
        // child: HomePages(),
        child: Scaffold(
          body: Center(
            child: Text('Hello World'),
          ),
        )
      )
    );
  }
}