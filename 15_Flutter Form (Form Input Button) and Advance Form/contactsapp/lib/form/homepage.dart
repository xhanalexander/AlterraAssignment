import 'package:flutter/material.dart';

class HomeContact extends StatelessWidget {
  HomeContact({super.key});

  final List<Map<String, String>> contactList = [
  {"avatar": "L", "name": "Leanne Graham", "phone": "1-770-736-8031 x56442"},
  {"avatar": "E", "name": "Ervin Howell", "phone": "010-692-6593 x09125"},
  {"avatar": "C", "name": "Clementine Bauch", "phone": "1-463-123-4447"},
  {"avatar": "S", "name": "Patricia Lebsack", "phone": "493-170-9623 x156"},
  {"avatar": "C", "name": "Chelsey Dietrich", "phone": "(254)954-1289"},
  {"avatar": "D", "name": "Mrs. Dennis Schulist", "phone": "1-477-935-8478 x6430"},
  {"avatar": "K", "name": "Kurtis Weissnat", "phone": "210.067.6132"},
  {"avatar": "Z", "name": "Zenaya Krakozia", "phone": "434-170-9623 x156"},
  {"avatar": "D", "name": "Dimitri Rascalov", "phone": "210.067.6132"},
  {"avatar": "A", "name": "Andrew Jackson", "phone": "1 202-918-2132"},
  {"avatar": "L", "name": "Lenny MccGuffins", "phone": "+1 224-734-2066"},
  {"avatar": "T", "name": "Terry Collins", "phone": "+376 574 684"},
  {"avatar": "E", "name": "Edward Longshank", "phone": "+44 7147 820408"},
  {"avatar": "R", "name": "Raymond Bulgari", "phone": "+7 940 460-31-55"},
  {"avatar": "R", "name": "Ryan Reynolds", "phone": "+1 217-360-8036"},
  {"avatar": "A", "name": "Alfred Gustavo", "phone": "+1 217-360-8036"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('All Contacts'),
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
          ),
        )
        ],
/*         flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.green],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ), */
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            margin: const EdgeInsets.all(15),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int i) {
          final contact = contactList[i];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 20,
              child: Text(
                contact["avatar"]!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            title: Text(contact["name"]!),
            subtitle: Text(contact["phone"]!),
          );},
      ),
    );
  }
}