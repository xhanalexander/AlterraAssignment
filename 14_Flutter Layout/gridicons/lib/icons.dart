import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconWidget extends StatelessWidget {
  IconWidget({super.key});

  final Map<String, IconData> iconMap = {
    "pets": Icons.pets,
    "pregnant_woman": Icons.pregnant_woman,
    "spatial_audio_off": Icons.spatial_audio_off,
    "timeline": Icons.timeline,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid Icons'),
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: iconMap.keys.map((key) {
          return Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue,
            ), 
            child: Icon(
              iconMap[key],
              color: Colors.white,
            ),
          );
        }).toList(),
    ));
  }
}