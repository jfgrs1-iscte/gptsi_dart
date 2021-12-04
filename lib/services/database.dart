import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ucharge_mvp/models/myUser.dart';

class DatabaseService {

  final String uid;

  DatabaseService({ required this.uid });

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('Users');

  Future updateUserData(String username,String password) async {
    return await userCollection.doc(uid).set({
      'username' : username,
      'password' : password,
    });
  }

  List<MyUser> _userListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc){
      return MyUser(
          username : doc.get('username') ?? '',
          password: doc.get('password') ?? ''
      );
    }).toList();
  }



  Stream<List<MyUser>> get users {
    return userCollection.snapshots().map(_userListFromSnapshot);
  }

}