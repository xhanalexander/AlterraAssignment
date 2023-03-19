import 'package:contactsapp/form/content.dart';
import 'package:flutter/material.dart';

class MyContact extends StatefulWidget {
  const MyContact({super.key});

  @override
  State<MyContact> createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        centerTitle: true,
        backgroundColor: Color(0xff6750A4),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white38,
        ),
        child: Column(
          children: [
            ContentContact(),
          ],
        ),
      ),
    );
  }
}