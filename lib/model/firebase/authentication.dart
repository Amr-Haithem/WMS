import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  FirebaseAuth _auth = FirebaseAuth.instance;
  //Stream<User?> userChanges() => _auth.userChanges();

  Future<UserCredential> registerDonatorWithEmailAndPassword(
      String email, String password) {
    return _auth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
