// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello you\'re signed in ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              user.email!,
              style: TextStyle(fontSize: 15),
            ),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color: Color.fromARGB(255, 64, 240, 64),
              child: Text('sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
