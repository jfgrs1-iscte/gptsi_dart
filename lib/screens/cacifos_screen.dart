import 'package:flutter/material.dart';

class CacifoDesignado extends StatefulWidget {
  @override
  State<CacifoDesignado> createState() => _CacifoDesignadoState();
}

class _CacifoDesignadoState extends
State<CacifoDesignado>{
  bool isVisible = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
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
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Container(
                  //padding: EdgeInsets.all(2),
                  //color: Colors.black,
                  margin: const EdgeInsets.fromLTRB(45,0,45,10),
                  padding: const EdgeInsets.fromLTRB(5,5,5,5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,
                        width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[

                      Text(
                        'Cacifo designado: #01',
                        style: TextStyle(
                          backgroundColor: Colors.white,
                          decorationColor: Colors.black,
                          fontSize: 30,
                        ) ,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 17.0, 10.0),
              color: Colors.black,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1 ,
                    child: SizedBox(
                      width: 20.0,
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      color: Colors.white,
                    padding: EdgeInsets.fromLTRB(10,5, 0.0, 10),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(50,0, 0, 0),
                      child: Text('Código : 0879',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Expanded(
                    flex: 1 ,
                    child: Container(
                        child: Image.asset('assets/eye.png'))
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 375,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Alterar o código',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 375,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.white,
                    child: Text(
                      'Partilhar o código:',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.white,
                        child: Text(
                            'E-mail'
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.white,
                        child: Text(
                            'Facebook'
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.white,
                        child: Text(
                            'Mensagem'
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        onPressed: (){},
                        color: Colors.white,
                        child: Text(
                            'WhatsApp'
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    width: 400,
                    child: RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      child: Text(
                        'Outra conta U-Charge',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SizedBox(
                  width: 200,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.grey,
                    child: Text(
                      'ABRIR CACIFO',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,

                      ),
                    ),
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
