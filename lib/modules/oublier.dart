import 'package:flutter/material.dart';
import 'package:flutterconnexion/modules/login.dart';
import 'package:flutterconnexion/main.dart';

void main() {
  runApp(oublier());
}

class oublier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connexion Page',
      home: OublierPage(),
    );
  }
}

class OublierPage extends StatefulWidget {
  @override
  _OublierPage createState() => _OublierPage();
}

class _OublierPage extends State<OublierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [
            //partie Logo et Text
            Column(
              children: [
                SizedBox(
                  height: 40,
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
                  'Forgot Password ?',
                  style: TextStyle(fontSize: 25, color: Colors.lightBlue),
                ),
              ],
            ),
            //Fin Logo et text
            //Debut Champ de texte
            SizedBox(
              height: 60.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20, color: Colors.lightBlue),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                ButtonTheme(
                  child: ElevatedButton(
                    child: Text(
                      'Reset your password',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {},
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
                      'register',
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
                      'connexion',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(174, 3, 77, 138),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => connexion()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
