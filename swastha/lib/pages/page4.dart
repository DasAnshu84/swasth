import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 600,
        width:400,
        decoration:BoxDecoration(
          image:DecorationImage(
          image: AssetImage('assets/images/Patient_profile.png'),
          fit: BoxFit.cover,
          ),
        )

      ),
    );
  }
}
