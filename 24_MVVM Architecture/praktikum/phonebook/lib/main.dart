import 'package:flutter/material.dart';
import 'package:phonebook/screen/contact_view.dart';
import 'package:phonebook/screen/contact_viewModel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactViewsModel()
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ContactViews(),
      ),
    );
  }
}

/* class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = '';
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactViewsModel()),
      ],
      child: const MaterialApp(
        title: title,
        debugShowCheckedModeBanner: false,
        home: ContactViews(),
      ),
    );
  }
} */
