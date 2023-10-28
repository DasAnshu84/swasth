import 'dart:async';

import 'package:flutter/material.dart';
import 'package:swastha/homepage.dart';
import 'package:swastha/loginpage.dart';
import 'package:swastha/registerpage.dart';

import 'mainpage.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool selected = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1600,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/landing.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: ListView(children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Stack(
              children: <Widget>[
                Image.asset("assets/images/Juggler.png"),
                AnimatedPositioned(
                  width: selected ? 150.0 : 150.0,
                  height: selected ? 60.0 : 60.0,
                  top: selected ? 0.0 : 50.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInBack,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Image.asset("assets/images/Coint.png"),
                  ),
                ),
                AnimatedPositioned(
                  width: 150.0,
                  height: 60.0,
                  top: !selected ? 10.0 : 100.0,
                  right: 0.0,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInBack,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Image.asset("assets/images/Donut.png"),
                  ),
                ),
              ],
            ),
            Column(children: [
              Text(
                "Spend Smarter",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 47, 126, 121),
                    fontSize: 25),
              ),
              Text(
                "Save More",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 47, 126, 121),
                    fontSize: 25),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => register()));
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 80, vertical: 20.0),
                    shape: StadiumBorder(),
                    backgroundColor: Color.fromARGB(255, 47, 126, 121)),
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: TextStyle(color: Colors.black)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mainpage()));
                    },
                    child: const Text(
                      " Login",
                      style: TextStyle(
                          color: Color.fromARGB(255, 47, 126, 121),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ])
          ]),
        ]),
      ),
    ));
  }
}
