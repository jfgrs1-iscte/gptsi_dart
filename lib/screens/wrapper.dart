import 'package:flutter/material.dart';
import 'package:ucharge_mvp/models/user.dart';
import 'package:ucharge_mvp/screens/dashboard_screen.dart';
import 'package:ucharge_mvp/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:ucharge_mvp/screens/register_screen.dart';


class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<myUser?>(context);
    if (user == null) {
      print('user logged out');
      return HomeScreen();
    } else {
      print('user logged in');
      return DashBoard();
    }
  }
}
