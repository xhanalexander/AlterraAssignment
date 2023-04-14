import 'package:flutter/material.dart';
import '../model/api/contact_api.dart';
import '../model/contact_model.dart';

class ContactViewsModel with ChangeNotifier {

  // private variable
  List<Contacts> _contacts = [];

  // getter
  List<Contacts> get contacts => _contacts;

  // method to get contacts
  getAllContacts() async {
    final c = await APIContact.getContacts();
    _contacts = c;
    notifyListeners();
  }
  
}