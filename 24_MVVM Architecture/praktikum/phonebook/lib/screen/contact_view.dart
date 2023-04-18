import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'contact_viewModel.dart';

class ContactViews extends StatefulWidget {
  const ContactViews({super.key});

  @override
  State<ContactViews> createState() => _ContactViewsState();
}

class _ContactViewsState extends State<ContactViews> {

  /* @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ContactViewsModel>(context, listen: false).getAllContacts();
    });
  } */

  @override
  void initState() {
    super.initState();
    Provider.of<ContactViewsModel>(context, listen: false).getAllContacts();
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewsModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
        backgroundColor: const Color(0xff6750A4),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white38,
        ),
        child: ListView.builder(
          itemCount: modelView.contacts.length,
          itemBuilder: (context, index) {
            final contact = modelView.contacts[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: const Color(0xffEADDFF),
                child: Text(contact.name[0], style: const TextStyle(color: Color(0xff21005D), fontWeight: FontWeight.bold)),
              ),
              title: Text(contact.name),
              subtitle: Text(contact.phone),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(Icons.edit_outlined, color: Colors.black),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        showDialog(
                          context: context, 
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Delete Contact'),
                              content: const Text('Are you sure?'),
                              actions: [
                                TextButton(
                                  onPressed: () {}, 
                                  child: const Text('Cancel')
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    setState(() {});
                                  }, 
                                  child: const Text('Delete')
                                ),
                              ],
                            );
                          }
                        );
                      });
                    },
                    icon: const Icon(Icons.delete_outlined, color: Colors.black),
                  ),
                ],
              ),
            );
          },
        ),
      ),


      /* body: ListView.builder(
        itemCount: modelView.contacts.length,
        itemBuilder: (context, index) {
          final contact = modelView.contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
          );
        },
      ), */
    );
  }
}