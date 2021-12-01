import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:ucharge_mvp/models/user.dart';
import 'package:ucharge_mvp/screens/wrapper.dart';
import 'package:ucharge_mvp/services/auth.dart';
import 'screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(StreamProvider<myUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
          home: Wrapper(),
      ),
    ));
}