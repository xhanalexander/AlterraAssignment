import 'package:flutter/material.dart';

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
          Icon(Icons.mobile_friendly, size: 30, color: Colors.grey,),
          SizedBox(height: 20,),
          Text("Create New Contact", style: TextStyle(fontSize: 20),),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: const Text("A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.", style: TextStyle(fontSize: 13)),
          ),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              
            ),
          )
          
        ],
      )
      
    );
  }
}