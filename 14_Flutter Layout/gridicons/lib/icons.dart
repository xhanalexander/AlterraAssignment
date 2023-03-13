import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IconWidget extends StatelessWidget {
  IconWidget({super.key});

  final Map<String, IconData> iconMap = {
    "pets": Icons.pets,
    "pregnant_woman": Icons.pregnant_woman,
    "spatial_audio_off": Icons.spatial_audio_off,
    "rounded_corner": Icons.rounded_corner,

    "rowing": Icons.rowing,
    "timeline": Icons.timeline,

    "euro": Icons.euro,

    "access_time_filled": Icons.access_time_filled,
    "g_translate": Icons.g_translate,
    "remove_shopping_cart": Icons.remove_shopping_cart,
    "restore_page": Icons.restore_page,

    "restore": Icons.restore,
    "room_preferences": Icons.room_preferences,
    "room_service": Icons.room_service,
    "rotate_90_degrees_ccw": Icons.rotate_90_degrees_ccw,

    "rotate_left": Icons.rotate_left,
    "rotate_right": Icons.rotate_right,
    "router": Icons.router,
    "rss_feed": Icons.rss_feed,

    "rsvp": Icons.rsvp,
    "rtt": Icons.rtt,
    "rule_folder": Icons.rule_folder,
    "run_circle": Icons.run_circle,

    "run_circle_outlined": Icons.run_circle_outlined,
    "run_circle_rounded": Icons.run_circle_rounded,
    "run_circle_sharp": Icons.run_circle_sharp,
    "laptop_chromebook": Icons.laptop_chromebook,

    "cloud_off": Icons.cloud_off,
    "animation": Icons.animation,
    "rv_hookup": Icons.rv_hookup,
    "safety_divider": Icons.safety_divider,

    "sailing": Icons.sailing,
    "sanitizer": Icons.sanitizer,
    "satellite": Icons.satellite,
    "save_alt": Icons.save_alt,
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