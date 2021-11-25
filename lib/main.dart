import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    onPressed: () {},
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

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
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
            padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
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
            onPressed: () {},
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

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
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
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
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
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
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