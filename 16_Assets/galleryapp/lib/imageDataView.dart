import 'package:flutter/material.dart';
import 'package:galleryapp/model.dart';

class imageInfo with ChangeNotifier {

  final List<GalleryItem> pics = [
    GalleryItem(
      imagePath: 'assets/images/alex-geerts-cvIKDPfcHqw-unsplash.jpg',
      title: 'Title 1',
      description: 'Description 1',
    ),
    GalleryItem(
      imagePath: 'assets/images/alex-houque-miR8jDkoz5s-unsplash.jpg',
      title: 'Title 2',
      description: 'Description 2',
    ),
  ];

  List<GalleryItem> get pictures => pics;

  void addPicture(GalleryItem picture) {
    pics.add(picture);
    notifyListeners();
  }
}

// Create image using providers
// Read image using providers
// delete image using providers
// update image using providers