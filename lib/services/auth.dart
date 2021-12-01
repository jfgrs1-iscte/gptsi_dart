import 'package:firebase_auth/firebase_auth.dart';
import 'package:ucharge_mvp/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  myUser? _userFromFirebaseUser(User? user) {
    return user != null ? myUser(uid: user.uid) : null ;
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
}