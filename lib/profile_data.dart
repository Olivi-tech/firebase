import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({Key? key}) : super(key: key);
  static final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Data'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(user.photoURL!)),
            Text(user.displayName!.toString()),
            Text(user.email!.toString()),
          ],
        ),
      ),
    );
  }
}
