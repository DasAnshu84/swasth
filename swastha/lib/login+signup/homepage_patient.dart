import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomepagePatient extends StatefulWidget {
  const HomepagePatient({super.key});

  @override
  State<HomepagePatient> createState() => _HomepagePatientState();
}

class _HomepagePatientState extends State<HomepagePatient> {
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
