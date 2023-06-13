import 'package:erp/auth/LoginPage.dart';
import 'package:erp/main.dart';
import 'package:erp/startup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return startUpPage();
    } else {
      return LoginPage();
    }
  }
}
