import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:vote/database.dart';
import 'firebase_options.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => registerState();
}

class registerState extends State<register> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  Future signUp() async {
    if (_passwordController.text == _confirmpasswordController.text) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      final FirebaseAuth auth = FirebaseAuth.instance;
      final user = auth.currentUser;

      /*await DatabaseService(uid: user!.uid)
          .updateUserData(1, 500, 'Shopping', 'Vishal Mart');*/
    }

    Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void signOut() {
      FirebaseAuth.instance.signOut();
      Navigator.pop(context);
    }

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bluecolor.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            const SizedBox(height: 70),
            const Icon(
              Icons.person_rounded,
              size: 150,
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Enter your details.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                    controller: _confirmpasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Confirm Password',
                    ))),
            /*Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: signIn, child: Text('Sign in')),
            ),*/
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: signUp,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(250, 50)),
                  child: Text('Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16))),
            ),
          ],
        ),
      ),
    );
  }
}
