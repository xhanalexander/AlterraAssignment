import 'package:flutter/material.dart';

class ContactForms extends StatefulWidget {
  const ContactForms({super.key});

  @override
  State<ContactForms> createState() => _ContactFormsState();
}

class _ContactFormsState extends State<ContactForms> {
  var nameKey = GlobalKey<FormState>();
  var phoneKey = GlobalKey<FormState>();
  var nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Contact'),
        centerTitle: true,
        backgroundColor: const Color(0xff6750A4),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white38,
          ),
          child: Column(
            children: [
              const SizedBox(height: 60,),
              const Icon(Icons.mobile_friendly, size: 30, color: Colors.grey,),
              const SizedBox(height: 20,),
              const Text("Create New Contact", style: TextStyle(fontSize: 20),),
              const SizedBox(height: 30,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const Text(
                    "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
                    style: TextStyle(fontSize: 13)),
              ),
              const SizedBox(height: 30,),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    key: nameKey,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please insert your name";
                        }
                        return null;
                      },
                      controller: nameController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple[200]!),
                        ),
                        filled: true,
                        fillColor: Color(0xffE7E0EC),
                        hintText: "Insert Your Name",
                        labelText: "Name",
                        labelStyle: TextStyle(color: Color(0xff49454F)),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color(0xff6750A4),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(height: 20,),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      key: phoneKey,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.purple[200]!),
                          ),
                          filled: true,
                          fillColor: const Color(0xffE7E0EC),
                          hintText: "+62 ...",
                          labelText: "Phone",
                          labelStyle: const TextStyle(color: Color(0xff49454F)),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color(0xff6750A4),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please insert your phone number";
                          }
                          return null;
                        },
                      ))),
              const SizedBox( height: 30,),
              ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xff6750A4),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )),
                child: const Text("Submit"),
              )
            ],
          )),
    );
  }
}

class allContact extends StatefulWidget {
  const allContact({super.key});

  @override
  State<allContact> createState() => _allContactState();
}

class _allContactState extends State<allContact> {
  
  final List<Map<String, String>> contactList = [
    {"avatar": "L", "name": "Leanne Graham", "phone": "1-770-736-8031 x56442"},
    {"avatar": "E", "name": "Ervin Howell", "phone": "010-692-6593 x09125"},
    {"avatar": "C", "name": "Clementine Bauch", "phone": "1-463-123-4447"},
    {"avatar": "S", "name": "Patricia Lebsack", "phone": "493-170-9623 x156"},
    {"avatar": "C", "name": "Chelsey Dietrich", "phone": "(254)954-1289"},
    {"avatar": "K", "name": "Kurtis Weissnat", "phone": "210.067.6132"},
    {"avatar": "Z", "name": "Zenaya Krakozia", "phone": "434-170-9623 x156"},
    {"avatar": "D", "name": "Dimitri Rascalov", "phone": "210.067.6132"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xff6750A4),
          title: const Text('Contacts List', style: TextStyle(color: Colors.white)),
          centerTitle: true,
        ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int i) {
          final contact = contactList[i];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff6750A4),
              radius: 20,
              child: Text(
                contact["avatar"]!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            title: Text(contact["name"]!),
            subtitle: Text(contact["phone"]!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff6750A4),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ContactForms()),
          );
        },
        child: const Icon(Icons.add),
      )
    );
  }
}