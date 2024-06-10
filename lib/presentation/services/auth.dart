import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User?> singinAnon();
  Stream<User?> get user;
}

class AuthServiceImpl implements AuthService {
  final FirebaseAuth _auth;
  AuthServiceImpl(this._auth);

  @override
  Stream<User?> get user {
    return _auth.authStateChanges();
  }

  @override
  Future<User?> singinAnon() async {
    try {
      UserCredential authResult = await _auth.signInAnonymously();
      User? user = authResult.user;
      return user;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
