import 'package:flutter/material.dart';
// import 'package:galleryapp/data.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'imageFull.dart';
import 'imageDataView.dart' as image_view;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences logins;
  String _name = '';

  @override
  void initState() {
    super.initState();
    _checkIfAlreadyLogin();
  }

  void _checkIfAlreadyLogin() async {
    logins = await SharedPreferences.getInstance();
    setState(() {
      _name = (logins.getString('name') ?? '');
    });
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text('Welcome'),
          content: RichText(
            text: TextSpan(
              text: 'Hello, ',
              style: const TextStyle(color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: _name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('OK')
            ),
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageInfo = Provider.of<image_view.imageInfo>(context);

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
                logins.setBool('login', false);
                logins.remove('name');
                Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          imageInfo.pics.length,
          (index) => ImageCard(
            pics: imageInfo.pics[index].imagePath,
            title: imageInfo.pics[index].title,
            description: imageInfo.pics[index].description,
          ),
        ),
      )
    );
  }

  Widget ImageCard({required String pics, required String description, required String title,
    // required String title,
  }) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return showCardDetails(image: pics, description: description);
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
            // Text(title, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Flexible(
              child: Image(
                image: Image.asset(pics).image,
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

  Widget showCardDetails ({required String image, required String description}) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image(
            image: Image.asset(image).image,
            fit: BoxFit.fitWidth,
            height: 300,
          ),
          // Text(title, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 10),
          Text(description, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tidak'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => FullImages(imagePath: image),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        var begin = Offset(0.0, 1.0);
                        var end = Offset.zero;
                        var curve = Curves.ease;

                        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                    )
                  );
                },
                child: const Text('Ya'),
              ),
            ],
          ),
        ],
      ),
    );
  }

}