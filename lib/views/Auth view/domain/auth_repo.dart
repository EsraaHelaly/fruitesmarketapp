import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future<UserCredential> loginWithGoogle();
  Future<UserCredential> loginWithFacebook();
  Future completeLogin(
      {@required String name,
      @required String phoneNumber,
      @required String adress});
}
