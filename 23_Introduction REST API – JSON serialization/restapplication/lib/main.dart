import 'dart:convert';

import 'package:dio/dio.dart';

void main() {
  // runApp(const MyApp());

  Dio dio = Dio();

  void _addContact() async {
    final Response response = await dio.post(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts', 
      data: {
      "name": "Johnny",
      "phone": "08123456789"
      },
    );
    print("Post data : ${response.data.toString()}");
  }

  /*   void _getContact() async {
    final Response response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts',
    );
    print("Get Data : ${response.data.toString()}");
  } */

  // _addContact();
  // _getContact();

  void convertJSON() async {

    final Response response = await dio.get(
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts/2',
    );

    List<dynamic> dataList = [
      {
        "id": 1,
        "name": "Hadi",
        "phone": "08123456789"
      },
    ];
    dataList.add(response.data);
    
    print("Get Data : $dataList");
  }
  convertJSON();

}