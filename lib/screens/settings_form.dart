import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ucharge_mvp/models/user.dart';
import 'package:ucharge_mvp/services/database.dart';
import 'package:ucharge_mvp/shared/loading.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();

  String? _currentUsername;
  String? _currentPassword;
  String? _currentEmail;

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<myUser?>(context);


    return StreamBuilder<UserData>(
      stream: DatabaseService(uid: user!.uid).userData,
      builder: (context, snapshot) {
          UserData? userData = snapshot.data;


          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text('Atualizar Informações',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: false,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Introduzir novo Username',
                  ),
                  onChanged: (val) => setState(() => _currentUsername = val),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                    ),
                    labelText: 'Introduzir nova Password',
                  ),
                  onChanged: (val) => setState(() => _currentPassword = val),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                  child: RaisedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user.uid).updateUserData(_currentUsername ?? userData!.username , _currentPassword ?? userData!.password, _currentEmail ?? userData!.email);
                        Navigator.pop(context);
                        }
                    },
                    padding: EdgeInsets.symmetric(horizontal: 80.0),
                    child: Text(
                      'Atualizar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
      }
    );
  }
}
