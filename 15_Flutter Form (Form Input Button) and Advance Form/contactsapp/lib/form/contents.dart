import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'createNew.dart';

class AppContact extends StatefulWidget {
  const AppContact({super.key});

  @override
  State<AppContact> createState() => _AppContactState();
}

class _AppContactState extends State<AppContact> {

  
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

  /* final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final namesRegex = RegExp(r'^[A-Z][a-z]*\s[A-Z][a-z]*$');
  final specRegex = RegExp(r'^[a-zA-Z\s]+$');
  final phoneRegex = RegExp(r'^0\d{7,14}$');
  final numericRegex = RegExp(r'^[0-9]+$');
  
  @override
  void dispose () {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void clear () {
    _nameController.clear();
    _phoneController.clear();
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        centerTitle: true,
        backgroundColor: const Color(0xff6750A4),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff6750A4),
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                return const NewContact();
              },
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                );
              },
            )
          );
          /* Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewContact()),
          ); */
        },
      ),
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white38,
          ),
          child: Form(
            // key: _formKey,
            child: Column(
              children: [
 /*                const SizedBox( height: 60,),
                const Icon(
                  Icons.mobile_friendly,
                  size: 30,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30,),
                const Text("Create New Contact", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 30,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: const Text(
                    "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
                    style: TextStyle(fontSize: 13)),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _nameController,
                  decoration:  InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple[200]!),
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E0EC),
                    hintText: "Insert Your Name",
                    labelText: "Name",
                    labelStyle: const TextStyle(color: Color(0xff49454F)),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff6750A4),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nama harus diisi oleh user.';
                    } else if (!namesRegex.hasMatch(value)) {
                      return 'Nama harus terdiri dari minimal 2 kata, dan Setiap kata harus dimulai dengan huruf kapital.';
                    } else if (!specRegex.hasMatch(value)) {
                      return 'Nama tidak boleh mengandung angka atau karakter khusus'; 
                    } else {
                      return null;
                    } 
                  },
                ),

                const SizedBox(height: 10),

                TextFormField(
                  controller: _phoneController,
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
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nomor telepon harus diisi oleh user';  
                    } else if (value.length < 8 || value.length > 15) {
                      return 'Panjang nomor telepon harus minimal 8 digit dan maksimal 15 digit.';
                    } else if (value.startsWith('0') == false ) {
                      return 'Nomor telepon harus dimulai dengan 0';
                    } else if (!numericRegex.hasMatch(value) ) {
                      return 'Nomor telepon harus terdiri dari angka saja';
                    } else {
                      return null;
                    }
                  },
                ),

                const SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        contactList.add({
                          "avatar": _nameController.text[0].toUpperCase(),
                          "name": _nameController.text,
                          "phone": _phoneController.text,
                        });
                        clear();
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff6750A4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30, vertical: 20),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    )
                  ),
                  child: const Text('Submit'),
                  ),
                ),
                
                const SizedBox(height: 30),
                const Text("List Contact", style: TextStyle(fontSize: 20),),
                const SizedBox(height: 20), */
                Expanded(
                  child: ListView.builder(
                    itemCount: contactList.isNotEmpty ? contactList.length : 1,
                    itemBuilder: (context, index) {
                      if (contactList.isNotEmpty) { 
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffEADDFF),
                            child: Text(contactList[index]['avatar']!, style: const TextStyle(color: Color(0xff21005D), fontWeight: FontWeight.bold),),
                          ),
                          title: Text(contactList[index]['name']!),
                          subtitle: Text(contactList[index]['phone']!),
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
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              }, 
                                              child: const Text('Cancel')
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                setState(() {
                                                  contactList.removeAt(index);
                                                });
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
                        } else {
                          return const Center(child: Text("No Contact", style: TextStyle(fontSize: 20, color: Colors.grey), ));
                        }
                    },
                  ),
                ),
              ],
            ),
          )
      )
    );
  }
}