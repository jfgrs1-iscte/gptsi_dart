import 'package:flutter/material.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({Key? key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formKey = GlobalKey<FormState>();

  late String _currentUsername;
  late String _currentPassword;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Text('Atualizar Informações',
          style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
              ),
              labelText: 'Introduzir Password',
            ),
            validator: (val) => val!.isEmpty ? 'Introduz uma Password' : null,
            onChanged: (val) => setState(() => _currentPassword = val),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: RaisedButton(
              onPressed: () async {
                print(_currentPassword);
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
}
