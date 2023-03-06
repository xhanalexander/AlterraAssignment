import 'package:flutter/material.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: kElevationToShadow[3]),
      margin: const EdgeInsets.all(7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.white,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Image.asset(
              'lib/assets/images/alterras.png',
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ));
  }
}
