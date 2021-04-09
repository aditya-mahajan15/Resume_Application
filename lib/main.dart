import 'package:flutter/material.dart';
import 'package:sample/screens/contactme.dart';
import 'package:sample/screens/education.dart';
import 'package:sample/screens/hobbies.dart';
import 'package:sample/screens/profile.dart';
import 'package:sample/shared/drawer.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[100],
      appBar: AppBar(
        title: Text("My Resume"),
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
                  margin: EdgeInsets.only(top: 20, left: 30),
                  color: Colors.blue[200],
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://image.freepik.com/free-vector/businessman-profile-cartoon_18591-58479.jpg",
                        width: 130,
                        height: 130,
                      ),
                      Text("My Profile"),
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
                  margin: EdgeInsets.only(top: 20, left: 30),
                  color: Colors.blue[200],
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://conceptdraw.com/a1720c3/p4/preview/640/pict--education-application-vector-stencils-library",
                        width: 130,
                        height: 130,
                      ),
                      Text("Education"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HobbiesScreen()));},
                child: Card(
                  elevation: 5.0,
                  margin: EdgeInsets.only(top: 20, left: 30),
                  color: Colors.blue[200],
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://image.freepik.com/free-vector/icon-gamepad-play-arcade-video-game-gamer-custom-designcartoon-illustration_185390-205.jpg",
                        width: 130,
                        height: 130,
                      ),
                      Text("Hobbies"),
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
                  color: Colors.blue[200],
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        "https://images.all-free-download.com/images/graphiclarge/contact_icons_6815008.jpg",
                        width: 130,
                        height: 130,
                      ),
                      Text("Contact Me"),
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
