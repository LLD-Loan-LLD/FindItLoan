import 'package:flutter/material.dart';
import 'package:flutterconnexion/modules/login.dart';
import 'package:flutterconnexion/modules/oublier.dart';
import 'package:flutterconnexion/modules/accueil.dart';

void main() {
  runApp(connexion());
}

class connexion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page de Connexion',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Connexion',
                    style: TextStyle(fontSize: 25, color: Colors.lightBlue),
                  ),
                ],
              ),

              //Fin Logo et text
              //Debut Champ de texte
              const SizedBox(
                height: 60.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Mail address",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                          .hasMatch(value)) {
                    return "Enter a correct Mail";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: "Your password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue)),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                    return 'Enter a password with capital letter, special caracter and number';
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
                        'Connexion',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyApp()));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    child: TextButton(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(174, 3, 77, 138),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => inscription()));
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ButtonTheme(
                    child: TextButton(
                      child: Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(174, 2, 77, 138)
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => oublier()));
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
