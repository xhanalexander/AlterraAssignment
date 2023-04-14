import 'package:flutter/material.dart';
import 'package:phonebook/screen/contact_view.dart';
import 'package:phonebook/screen/contact_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ContactViewsModel()
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactViews(),
      ),
    ),
  );
}

