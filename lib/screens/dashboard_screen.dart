import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget{
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool isVisible = false;

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
                    // padding: EdgeInsets.all(1.0),
                    child: Image.asset('assets/transp.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Image.asset('assets/lock_locked.png',
                      scale: 10),
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Cacifos disponiveis:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  Container(
                    //color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4.0)
                    ),
                    child: Text(
                      "1",
                      style: TextStyle( fontSize: 24.0,
                      ),
                    ),
                  ),
                ],

              ),

            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(width: 4.0, color: Colors.black),
                      fixedSize: const Size(400,30),
                    ),
                    child: Text("Selecionar cacifo",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Text('ola'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
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