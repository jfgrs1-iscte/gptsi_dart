import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 30.0, 0.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('assets/transp.png'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RegisterScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                'FAZER REGISTO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                ),
              ),
              color: Colors.black,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 40.0) ,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashBoard()),
                      );
                    },
                    color: Colors.white,
                    child: Text('GOOGLE'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 35.0) ,
                    onPressed: () {},
                    color: Colors.white,
                    child: Text('FACEBOOK'
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Já tens uma conta?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginScreen()),
                );
              },
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'INICIAR SESSÃO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  letterSpacing: 1.0,
                ),
              ),
              color: Colors.black,
            ),
            SizedBox(
              height: 60.0,
            ),
            Text('Ao Continuar está a concordar com os Termos e Condições',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}