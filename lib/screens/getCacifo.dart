import 'package:flutter/material.dart';
import 'cacifos_screen.dart';

class DesbloquearCacifo extends StatefulWidget{
  @override
  State<DesbloquearCacifo> createState() => _DesbloquearCacifoState();
}

class _DesbloquearCacifoState extends State<DesbloquearCacifo> {
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
                ],
              ),
            ),
            SizedBox(
              height: 150.0,
            ),

            Visibility(
              visible: isVisible,

              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          height: 100.0,
                        ),
                      ),


                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [
                            SizedBox(width: 5),
                            Image.asset('assets/unlocked_lock_r.png',
                                scale: 10),

                            SizedBox(
                              width: 10,
                            ),

                            Container(
                              color: Colors.black,
                              padding: EdgeInsets.symmetric( horizontal: 45.0, vertical: 10),
                              child: Text(
                                'O teu cacifo:',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  letterSpacing: 3.0,
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 10.0,
                            ),

                            Container(
                              //color: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black, width: 4.0)
                              ),
                              child: Text(
                                "#01",
                                style: TextStyle( fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CacifoDesignado()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          side: BorderSide(width: 4.0, color: Colors.black),
                          fixedSize: const Size(320,45),
                        ),
                        child: Text("Ver o código do cacifo:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0,0),
                        decoration: new BoxDecoration(

                          color: Colors.black,
                        ),
                        child: Image.asset('assets/eye2.png',
                          scale: 9,
                        ),
                      ),

                    ],
                  ),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
}
