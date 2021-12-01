import 'package:flutter/material.dart';
import 'package:ucharge_mvp/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'dashboard_screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child:Container(
                    child: BackButton(
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child:Container(
                    child: SizedBox(
                      width: 20.0,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child:Container(
                    padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/transp.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: CircleAvatar(
                radius: 50.0,
                child: Image.asset('assets/login.png'),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text('Username / Email:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                  ),
                  labelText: 'Introduzir Username',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
              child: Text('Password:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.fromLTRB(20.0,0.0, 20.0, 0.0),
              margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                  ),
                  labelText: 'Introduzir Password',
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(75.0, 15.0, 0.0, 0.0),
              child: RaisedButton(
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();
                  Navigator.pop(context);
                  if (result == null ) {
                    print('error signing in');
                  }else {
                    print('Anonymous Login Success. User :');
                    print(result.uid);

                  }
                },
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Text(
                  'ENTRAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    letterSpacing: 1.0,
                  ),
                ),
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Text('Ao Continuar está a concordar com os Termos e Condições',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}