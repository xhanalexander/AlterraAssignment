import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinosDes extends StatelessWidget {
  const CupertinosDes({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('CupertinoApp'),
        ),
        child: Center(
          child: Text("This is CupertinoApp", style: TextStyle(color: Colors.white60 ),)
        ),
      )
    );
  }
}