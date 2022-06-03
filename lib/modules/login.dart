import 'package:flutter/material.dart';
import 'package:flutterconnexion/main.dart';


void main() {
  runApp(inscription());
}

class inscription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Register page",
      home: Inscription(),
    );
  }
}

class Inscription extends StatefulWidget {
  @override
  _Inscription createState() => _Inscription();
}

class _Inscription extends State<Inscription> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            children: [
              //partie Logo et Text
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 25, color: Colors.lightBlue),
                  ),
                ],
              ),
              //Fin Logo et text
              //Debut Champ de texte
              const SizedBox(
                height: 40.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Your Username",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "The Username is correct";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "email Address",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                    return "Enter a correct email address";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Your Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                    return 'Enter a password with numbers, capital Letters and special caracters';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Retype your password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                    return 'Enter a password with numbers, capital Letters and special caracters';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  ButtonTheme(
                    child: ElevatedButton(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => connexion()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.lightBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    child: TextButton(
                      child: Text(
                        'connexion',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(174, 3, 77, 138),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => connexion()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
