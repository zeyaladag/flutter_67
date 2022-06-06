import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //GİRİSYAP CLASSI
  Future<User> signIn(String email, String pass) async {
    UserCredential result =
        await _auth.signInWithEmailAndPassword(email: email, password: pass);
    final User user = result.user!;
    return user;
  }
}
