import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  String? myName;
  String? myEmail;

  @override
  void initState() {
    super.initState();
    //  user = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext? context) {
    //final user = FirebaseAuth.instance.currentUser;
    //print('Hello User ${user!.displayName}');
    // if (user != null) {
    //   myName = user!.displayName;
    //   myEmail = user!.email;
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(FirebaseAuth.instance.currentUser != null
                ? FirebaseAuth.instance.currentUser!.uid
                : 'no user'),
            const Text('myEmail'),
          ],
        ),
      ),
    );
  }
}
