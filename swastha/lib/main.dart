import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swastha/landing.dart';

import 'package:swastha/mainpage.dart';
//import 'package:vote/controller/trial.dart';

//import 'package:splashscreen/splashscreen.dart';
//import 'package:vote/controller/mainpage.dart';

import 'firebase_options.dart';
import 'dart:async';
//import 'landing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(swastha());
}

class swastha extends StatelessWidget {
  const swastha({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => mainpage()
                //AnimatedPositionedExample()
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/swasth.jpeg"),
              fit: BoxFit.cover)),
    ));
  }
}
