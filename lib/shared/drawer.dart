import 'package:flutter/material.dart';
import 'package:sample/main.dart';
import 'package:sample/screens/contactme.dart';
import 'package:sample/screens/dashboard.dart';
import 'package:sample/screens/education.dart';
import 'package:sample/screens/hobbies.dart';
import 'package:sample/screens/profile.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: SafeArea(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.arrow_back,size: 45, color: Colors.white,),
                    title: Text('Dashboard',style: TextStyle(color: Colors.limeAccent,fontSize: 18),),
                  ),
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));},
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()));
                  },
                  child: ListTile(
                    leading: Icon(Icons.person, size: 45, color: Colors.white),
                    title: Text(
                      'My Profile',
                      style: TextStyle(color: Colors.limeAccent, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => EducationScreen()));},
                  child: ListTile(
                    leading: Icon(Icons.book, size: 45, color: Colors.white),
                    title: Text(
                      'Education',
                      style: TextStyle(color: Colors.limeAccent, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HobbiesScreen()));},
                  child: ListTile(
                    leading: Icon(Icons.gamepad, size: 45, color: Colors.white),
                    title: Text(
                      'Hobbies',
                      style: TextStyle(color: Colors.limeAccent, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ContactMeScreen()));},
                  leading: Icon(Icons.contact_phone, size: 45, color: Colors.white),
                  title: Text(
                    'Contact Me',
                    style: TextStyle(color: Colors.limeAccent, fontSize: 18),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
