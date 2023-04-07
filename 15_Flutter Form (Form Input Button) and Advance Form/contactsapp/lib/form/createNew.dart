
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewContact extends StatefulWidget {
  const NewContact({super.key});

  @override
  State<NewContact> createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final namesRegex = RegExp(r'^[A-Z][a-z]*\s[A-Z][a-z]*$');
  final specRegex = RegExp(r'^[a-zA-Z\s]+$');
  final phoneRegex = RegExp(r'^0\d{7,14}$');
  final numericRegex = RegExp(r'^[0-9]+$');
  
  get contactList => null;
  
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
        title: const Text('New Contact'),
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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Icon(
                Icons.mobile_friendly,
                size: 30,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Create New Contact",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const Text(
                    "A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.",
                    style: TextStyle(fontSize: 13)),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
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
                  } else if (value.startsWith('0') == false) {
                    return 'Nomor telepon harus dimulai dengan 0';
                  } else if (!numericRegex.hasMatch(value)) {
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
                      )),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}