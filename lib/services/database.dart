import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ucharge_mvp/models/Brew.dart';
import 'package:ucharge_mvp/models/user.dart';

class DatabaseService {

  final String uid;

  DatabaseService({ required this.uid });

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('Users');

  Future updateUserData(String username,String password, String email) async {
    return await userCollection.doc(uid).set({
      'username' : username,
      'password' : password,
      'email' : email,
    });
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
      return UserData(
          uid: uid,
          username : snapshot['username'],
          password: snapshot['password'],
          email: snapshot['email'],
      );
  }

  List<Brew> _brewListFromSnapshot(QuerySnapshot snapshot){
    return snapshot.docs.map((doc){
      return Brew(
          name: doc.get('name') ?? '',
          sugars: doc.get('sugars') ?? '0',
          strength: doc.get('strength') ?? 0
      );
    }).toList();
  }

  Stream<List<Brew>> get brews {
    return userCollection.snapshots().map(_brewListFromSnapshot);
  }

  Stream<UserData> get userData {
    return userCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}