import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';

class AppForms extends StatefulWidget {
  const AppForms({super.key});

  @override
  State<AppForms> createState() => _AppFormsState();
}

class _AppFormsState extends State<AppForms> {

  final List<Map<String, dynamic>> contactList = [
    {
      "avatar": "L",
      "name": "Leanardo DiCaprio",
      "phone": "081234567890",
      "date": "12-12-2021",
    },
    {
      "avatar": "J",
      "name": "Jennifer Lawrence",
      "phone": "081234567890",
      "date": "12-12-2021",
    },
  ];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();
  final namesRegex = RegExp(r'^[A-Z][a-z]*\s[A-Z][a-z]*$');
  final specRegex = RegExp(r'^[a-zA-Z\s]+$');
  final phoneRegex = RegExp(r'^0\d{7,14}$');
  final numericRegex = RegExp(r'^[0-9]+$');
  
  DateTime duesDate = DateTime.now();
  final currentDate = DateTime.now();
  
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile App Contact'),
        centerTitle: true,
        backgroundColor: const Color(0xff6750A4),
      ),
      body: Container(
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white38,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox( height: 60,),
 
                fileChooser(context),
                const SizedBox(height: 20),
                const Text(
                  'Insert Profile Picture',
                ),
                const SizedBox(height: 20),

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

                const SizedBox(height: 10),

                TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple[200]!),
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E0EC),
                    hintText: "Insert Birth Date",
                    // labelText: "Insert Birth Date",
                    labelStyle: const TextStyle(color: Color(0xff49454F)),
                    prefixIcon: const Icon(
                      Icons.date_range,
                      color: Color(0xff6750A4),
                    ),
                  ),
                  onTap: () async {
                    final DateTime? date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      String formattedDate = DateFormat('d MMMM yyyy').format(date);
                      // parse formattedDate to string

                      _dateController.text = formattedDate;
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tanggal harus diisi oleh user';
                    } else {
                      return null;
                    }
                  },
                ),

                const SizedBox(height: 10),

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
                          "date": _dateController.text,
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
                const SizedBox(height: 20),
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
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(contactList[index]['phone']!),
                              const SizedBox(height: 2),
                              Text(
                                contactList[index]['date']!,
                                style: TextStyle(color: Colors.grey[600], fontSize: 12),
                              ),
                            ]
                          ),
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

  Widget fileChooser(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
          ),
          child: ElevatedButton(
            onPressed: () {
              chooseFile();
            },
            child: Icon(Icons.add_a_photo),
            style: ElevatedButton.styleFrom(
              primary: Color(0xff6750A4),
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
            ),        
          ),
        )
      ],
    );
  }

  void chooseFile() async {
    final result = await FilePicker.platform.pickFiles();
    if ( result == null) return;

    final file = result.files.first;
    openFile(file);
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
  
}
