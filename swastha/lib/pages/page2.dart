import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:Center(
       child: Text("Your past bookings will be shown here", style: TextStyle(color: Color.fromARGB(255,47,126,121), fontSize: 25),),
          )
    );
  }
}
