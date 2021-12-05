import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ucharge_mvp/models/Brew.dart';
import 'package:ucharge_mvp/models/user.dart';


class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  @override
  Widget build(BuildContext context) {

    final brews = Provider.of<List<Brew>>(context);
    
    brews.forEach((user) {
      print(user.sugars);
      print(user.strength);
    });

    return Container();
  }
}
