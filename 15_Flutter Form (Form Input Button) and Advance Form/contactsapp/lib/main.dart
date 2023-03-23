import 'package:contactsapp/form/contents.dart';
import 'package:flutter/material.dart';
import 'package:contactsapp/advanceform/picker.dart';

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
        home: const AppContact()
        // home: const pickerApps()
        );
  }
}
