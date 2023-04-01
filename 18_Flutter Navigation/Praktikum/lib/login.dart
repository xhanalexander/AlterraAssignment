import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForms extends StatefulWidget {
  const LoginForms({super.key});

  @override
  State<LoginForms> createState() => _LoginFormsState();
}

class _LoginFormsState extends State<LoginForms> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool obscureText = true;

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _checkIfAlreadyLogin();
  }

  late SharedPreferences logins;
  late bool _newUser;

  void _checkIfAlreadyLogin() async {
    logins = await SharedPreferences.getInstance();
    _newUser = (logins.getBool('login') ?? true);
    if (_newUser) {
      // Navigator.pushReplacementNamed(context, '/home');
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Name",
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  } else if (value.length < 3) {
                    return "Please enter a valid name";
                  } else {
                    return null;
                  }
                },
                inputFormatters: [
                  LengthLimitingTextInputFormatter(40),
                ],
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Emails",
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your email";
                  } else if (!value.contains('@')) {
                    return "Please enter a valid email";
                  } else if (!value.contains('.')) {
                    return "Please enter a valid email";
                  } else {
                    return null;
                  }
                },
                inputFormatters: [
                  LengthLimitingTextInputFormatter(40),
                ],
              ),
              const SizedBox(height: 20,),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    }, 
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(40),
                ],
                obscureText: obscureText,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your password";
                  } else if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  } else if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                    return "Password must be at least 1 special character";
                  } else if (value.contains(RegExp(r'[0-9]'))) {
                    return "Password must be at least 1 number";
                  } else {
                    null;
                  }
                },
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      final validForms = _formKey.currentState!.validate();
                        String name = _nameController.text;
                        if (validForms) {
                          logins.setBool('login', false);
                          logins.setString('name', name);
                          Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                        }
                    },
                    child: const Text("Sign In", style: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
