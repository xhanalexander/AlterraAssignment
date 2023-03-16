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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[200]!),
                ),
                filled: true,
                fillColor: Color(0xffE7E0EC),
                hintText: "Insert Your Name",
                labelText: "Name",
                labelStyle: TextStyle(color: Color(0xff49454F)),
                prefixIcon: Icon(Icons.person, color: Color(0xff6750A4),),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple[200]!),
                ),
                filled: true,
                fillColor: Color(0xffE7E0EC),
                hintText: "+62 ...",
                labelText: "Phone",
                labelStyle: TextStyle(color: Color(0xff49454F)),
                prefixIcon: Icon(Icons.phone, color: Color(0xff6750A4),),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xff6750A4),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),) 
              ),
              child: const Text("Submit"),
            ),
          )
        ],
      )
      
    );
  }
}