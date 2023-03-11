import 'package:flutter/material.dart';

class MyApssFlu extends StatelessWidget {
  MyApssFlu({super.key});

  final titles = ['Learn Flutter',  'Learn ReactJS',  'Learn VueJS',  'Learn Tailwind CSS',  'Learn UI/UX',  'Learn Figma',  'Learn Digital Marketing'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: const Color(0xff6200EE),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',
          ),
        ],
      ),
      appBar: AppBar(
      centerTitle: true,
      title: const Text('My Flutter App'),
      backgroundColor: const Color(0xff6200EE),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ]),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff03DAC5),
        child: Icon(Icons.add),
      ),
        body: ListView(
          children: titles
            .map((title) => ListTile(
                  title: Text(title),
                  onTap: () {},
                ))
        .toList(),
      )
    );
  }
}

  /* children: [
    ListTile(
      title: Text('Map'),
    ),
    ListTile(
      title: Text('Album'),
    ),
    ListTile(
      title: Text('Phone'),
    ),
  ], */