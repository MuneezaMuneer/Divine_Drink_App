import 'dart:async';
import 'package:divine/screens/bottomNavigationBar.dart';
import 'package:divine/screens/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
       Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomBarDesign(),
            )));
    }
   else{
     Timer(
        const Duration(seconds: 2),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DivineApp(),
            )));
   }
  }
}
