import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact_viewModel.dart';

class ContactViews extends StatefulWidget {
  const ContactViews({super.key});

  @override
  State<ContactViews> createState() => _ContactViewsState();
}

class _ContactViewsState extends State<ContactViews> {

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ContactViewsModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewsModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Phonebook'),
      ),
      body: Provider.value(
        value: modelView,
        child: ListView.builder(
          itemCount: modelView.contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(modelView.contacts[index].name),
              subtitle: Text(modelView.contacts[index].phone),
            );
          },
        ),
      )
    );
  }
}