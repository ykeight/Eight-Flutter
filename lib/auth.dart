// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projj/home_screen.dart';
import 'package:projj/screens/login_screen.dart';

class auth extends StatelessWidget {
  const auth({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          } else {
            return const Loginscreen();
          }
        }),
      ),
    );
  }
}
