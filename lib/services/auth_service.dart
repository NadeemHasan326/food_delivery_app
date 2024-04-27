import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  FirebaseAuth firebaseInstance = FirebaseAuth.instance;

  Future<UserCredential?> signUp(String email, String password) async {
    try {
      UserCredential? user = await firebaseInstance
          .createUserWithEmailAndPassword(email: email, password: password);
      return user;
    } catch (e) {
      log("Error while creating user :: =============> $e");
    }
    return null;
  }

  // login
  Future<UserCredential?> login(String email, String password) async {
    try {
      UserCredential? user = await firebaseInstance.signInWithEmailAndPassword(
          email: email, password: password);
      return user;
    } catch (e) {
      log("Error while creating user :: =============> $e");
    }
    return null;
  }


  // sign out
  Future<void> logOut() async {
    await firebaseInstance.signOut();
  }
}
