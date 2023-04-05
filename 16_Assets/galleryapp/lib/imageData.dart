import 'package:flutter/material.dart';

class PictureInfo with ChangeNotifier {

  List<Map<String, dynamic>> imageGet = [
    {
      'image': 'assets/images/alex-geerts-cvIKDPfcHqw-unsplash.jpg',
      'title': 'Sunset',
      'description': 'Sunset over the ocean'
    },

  ];

  // pakai consumer atau provider.of

  void addImage({required String image, required String title, required String description}) {
    imageGet.add({
      'image': image,
      'title': title,
      'description': description,
    });
    notifyListeners();
  }

  void removeImage(int index) {
    imageGet.removeAt(index);
    notifyListeners();
  }

  void updateImage({required String image, required String title, required String description, required int index}) {
    imageGet[index] = {
      'image': image,
      'title': title,
      'description': description,
    };
    notifyListeners();
  }

}

// Create image using providers
// Read image using providers
// delete image using providers
// update image using providers