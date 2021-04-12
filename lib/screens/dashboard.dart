import 'package:flutter/material.dart';
import 'package:sample/shared/drawer.dart';
import 'profile.dart';
import 'education.dart';
import 'hobbies.dart';
import 'contactme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("My Resume",style: TextStyle(color: Colors.lime),),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 60, left: 30),
                  color: Colors.pinkAccent[100],
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/myprofile.jpg',
                        width: 130,
                        height: 130,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.limeAccent),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EducationScreen()));},
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 60, left: 30),
                  color: Colors.pinkAccent[100],
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/books.jpg',
                        width: 130,
                        height: 130,
                      ),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("Education",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.limeAccent),),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HobbiesScreen()));},
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 20, left: 30),
                  color: Colors.pinkAccent[100],
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/gamepad.jpg',
                        width: 130,
                        height: 130,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text("Hobbies",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.limeAccent),),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ContactMeScreen()));},
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 20, left: 30),
                  color: Colors.pinkAccent[100],
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/contact1.jpg',
                        width: 130,
                        height: 130,
                      ),
                      Padding(padding: EdgeInsets.all(8),child: Text("Contact Me",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.limeAccent),)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}