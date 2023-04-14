import '../contact_model.dart';
import 'package:dio/dio.dart';

class APIContact {

  static Future<List<Contacts>> getContacts() async {

    final response = await Dio()
    .get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200) {
      List<Contacts> contacts = (response.data as List)
        .map((e) => Contacts(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();
      return contacts;  
    } else {
      throw Exception('Failed to load contacts');
    }

  }
}