import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ucharge_mvp/models/myUser.dart';


class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  @override
  Widget build(BuildContext context) {

    final users = Provider.of<List<MyUser>>(context);
    
    users.forEach((user) {
      print(user.username);
      print(user.password);
    });

    return Container();
  }
}
