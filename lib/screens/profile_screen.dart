import 'package:flutter/material.dart';
import 'package:ucharge_mvp/models/myUser.dart';
import 'package:ucharge_mvp/screens/getCacifo.dart';
import 'package:ucharge_mvp/screens/settings_form.dart';
import 'package:ucharge_mvp/services/auth.dart';
import 'package:ucharge_mvp/services/database.dart';
import 'package:provider/provider.dart';


class Perfil extends StatefulWidget {
  @override
  State<Perfil> createState() => _Perfil();
}

class _Perfil extends State<Perfil>{
  bool isVisible = false;
  bool value = true;

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context){

    void _showSettingsPanel() {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: SettingsForm(),
        );
      });
    }

    return StreamProvider<List<MyUser>>.value(
      initialData: [],
      value: DatabaseService(uid:'').users,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.blue[100],
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 00.0),
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
                  Center(
                    child: CircleAvatar(
                      radius: 50.0,
                      child: Image.asset('assets/login.png'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Erlich Bachman',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Center(
                    child:Text(
                      'erlichbachman@piedpieper.com',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(

                    child: Container(
                      width: 200,
                      child: RaisedButton(
                        onPressed: _showSettingsPanel,
                        child: Text(
                          'Editar perfil',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width:30,
                      ),
                      Text(
                          'Notificações'
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Center(
                        child: Container(
                          width: 370,
                          height: 50,
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Text('Ativar notificações',
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Switch.adaptive(value: value, onChanged: (value) => setState(() => this.value=value),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width:30,
                      ),
                      Text(
                          'Link para convidar pessoas'
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Container(
                      width: 370,
                      height: 40,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Convidar pessoas',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: BorderSide(width: 4.0, color: Colors.black),
                            ),

                            child: Text(
                              'Invite',
                              style: TextStyle(
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        await _auth.signOut();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(width:4, color: Colors.black),
                        fixedSize: const Size(370,30),
                      ),
                      child: Text(
                        'Terminar sessão',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: (){},
                        iconSize: 50,
                        icon: Icon(Icons.house_rounded),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      IconButton(
                        onPressed: (){},
                        iconSize: 50,
                        icon: Icon(Icons.inbox),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      IconButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DesbloquearCacifo()),
                          );
                        },
                        iconSize: 50,
                        icon: Icon(Icons.lock_open),
                      ),
                    ],
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