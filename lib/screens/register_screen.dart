import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
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
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text('Username:',
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
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Text('E-Mail:',
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
                  labelText: 'Introduzir E-Mail',
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
              margin: EdgeInsets.fromLTRB(70.0, 15.0, 0.0, 0.0),
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Text(
                  'REGISTAR',
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
              height: 50.0,
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