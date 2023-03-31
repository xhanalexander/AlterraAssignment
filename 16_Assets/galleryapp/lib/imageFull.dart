import 'package:flutter/material.dart';

class FullImages extends StatelessWidget {
  final String imagePath;

  const FullImages({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Image'),
        centerTitle: true,
      ),
      body: InteractiveViewer(
        child: Center(
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
