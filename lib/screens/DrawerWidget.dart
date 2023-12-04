// ignore_for_file: prefer_const_constructors, unused_element, no_logic_in_create_state, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names
//import 'package:projj/screens/signout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountEmail: Text(
                user.email!,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountName: Text(
                "Hello",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/login.png',
                ),
              ),
            ),
          ),

          //listile

          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.red,
            ),
            title: Text(
              "User",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cart,
              color: Colors.red,
            ),
            title: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.red,
            ),
            title: Text(
              "Settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: Text(
              "Log Out",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class DrawerWidget extends StatefulWidget {
//   const DrawerWidget({super.key});

//   @override
//   State<DrawerWidget> createState() => _DrawerWidget();
// }

// class _DrawerWidgetState extends State<DrawerWidget> {
//   final user = FirebaseAuth.instance.currentUser!;

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Hello you\'re signed in ',
//               style: TextStyle(fontSize: 20),
//             ),
//             Text(
//               user.email!,
//               style: TextStyle(fontSize: 15),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 FirebaseAuth.instance.signOut();
//               },
//               color: Color.fromARGB(255, 64, 240, 64),
//               child: Text('sign out'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
