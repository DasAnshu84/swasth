import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swastha/login+signup/homepage_doctor.dart';
import 'package:swastha/login+signup/homepage_patient.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        body: Column(children: [
          Container(
            width: 500,
            height: 420,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/doctor.jpg"),
                    fit: BoxFit.cover)),
          ),
          Text("Sign up as",
              style: TextStyle(
                  color: Color.fromARGB(237, 0, 109, 119), fontSize: 30)),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/image12.jpg',
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomepageDoctor()),
                          );
                        },
                        child: Text(
                          'Doctor',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(237, 0, 109, 119),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/image13.jpg',
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomepagePatient()),
                          );
                        },
                        child: Text(
                          'Patient',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(237, 0, 109, 119),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/image14.jpg',
                    height: 50,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Chemist',
                          style: TextStyle(fontSize: 22),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(237, 0, 109, 119),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]));
  }
}