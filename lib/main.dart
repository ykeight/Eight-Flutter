// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:projj/auth.dart';
import 'package:projj/home_screen.dart';
import 'package:projj/screens/CartPage.dart';
import 'package:projj/screens/login_screen.dart';
import 'package:projj/screens/signup.dart';
import 'firebase_options.dart';


// ...
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 1, 26, 169)),
        useMaterial3: true,
      ),
      //home: const auth(),
      routes: {
        '/': (context) => auth(),
        'homeScreen': (context) => HomeScreen(),
        'signupScreen': (context) => Signup(),
        'loginScreen': (context) => Loginscreen(),
        'cartPage': (context) => CartPage(),
      },
    );
  }
}
