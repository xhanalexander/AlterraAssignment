import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Galleries'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('.'),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Log Out', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
              onTap: () {
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          // ImageCard(image: 'https://media4.giphy.com/media/H07HCwO2QrmWP8f0Ys/giphy.gif?cid=ecf05e477o2o091g7wdhe7hpe3htsbd6hj9ej1sj4dhbwz4o&rid=giphy.gif&ct=g', title: "Cat Sleeping"),
          ImageCard(image: 'https://media4.giphy.com/media/H07HCwO2QrmWP8f0Ys/giphy.gif?cid=ecf05e477o2o091g7wdhe7hpe3htsbd6hj9ej1sj4dhbwz4o&rid=giphy.gif&ct=g', title: "Cats Sleep", description: "This is a description of the image"),
          ImageCard(image: 'https://media4.giphy.com/media/H07HCwO2QrmWP8f0Ys/giphy.gif?cid=ecf05e477o2o091g7wdhe7hpe3htsbd6hj9ej1sj4dhbwz4o&rid=giphy.gif&ct=g', title: "Cats Sleep", description: "This is a description of the image"),
        ],
      )
    );
  }

  Widget ImageCard({
    required String image,
    required String title,
    required String description,
  }) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Text(title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Expanded(
              child: Image(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

}