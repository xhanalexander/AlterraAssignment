import 'package:flutter/material.dart';

class PictureInfo with ChangeNotifier {
  List<Map<String, String>> imageInf = [];

  String _imagePath = '';

  void setImagePath(String imagePath) {
    _imagePath = imagePath;
    notifyListeners();
  }
}