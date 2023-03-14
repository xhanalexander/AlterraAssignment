import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContentContact extends StatelessWidget {
  const ContentContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          SizedBox(height: 60,),
          Icon(Icons.contacts, size: 30, color: Colors.grey,),
          SizedBox(height: 20,),
          Text("Create New Contact", style: TextStyle(fontSize: 20),),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc sit amet aliquam lacinia", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15, color: Colors.grey),),
          )
        ],
      )
      
    );
  }
}