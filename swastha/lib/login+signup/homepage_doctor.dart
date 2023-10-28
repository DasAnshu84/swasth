import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomepageDoctor extends StatefulWidget {
  const HomepageDoctor({super.key});

  @override
  State<HomepageDoctor> createState() => _HomepageDoctorState();
}

class _HomepageDoctorState extends State<HomepageDoctor> {
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: signOut,
              icon: Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
      ),
    );
  }
}
